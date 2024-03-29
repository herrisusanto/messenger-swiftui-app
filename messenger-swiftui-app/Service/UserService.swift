//
//  UserService.swift
//  messenger-swiftui-app
//
//  Created by loratech on 13/01/24.
//

import Foundation
import Firebase
import FirebaseFirestoreSwift


class UserService {
    
    @Published var currentUser: User?
    
    static let shared = UserService()
    
    @MainActor
    func fetchCurrentUser() async throws {
        guard let uid = Auth.auth().currentUser?.uid else {return}
        let snapshot = try await FirestoreConstants.UserCollection.document(uid).getDocument()
        let user = try snapshot.data(as: User.self)
        self.currentUser = user
    }
    
    
    static func fetchAllUsers(limit: Int? = nil)async throws -> [User] {
        let query = FirestoreConstants.UserCollection
        if let limit {
            query.limit(to: limit)
        }
        let snapshot = try await query.getDocuments()
        let users = snapshot.documents.compactMap({try? $0.data(as: User.self)})
        return users
    }
    
    static func fetchUser(withUid uid: String, completion: @escaping(User)->Void){
        FirestoreConstants.UserCollection.document(uid).getDocument { snapshot, _ in
            guard let user = try? snapshot?.data(as: User.self) else { return }
            completion(user)
        }
    }
}
