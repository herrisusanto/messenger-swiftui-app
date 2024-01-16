//
//  User.swift
//  messenger-swiftui-app
//
//  Created by loratech on 12/01/24.
//

import Foundation
import FirebaseFirestoreSwift


struct User: Codable, Identifiable, Hashable {
    @DocumentID var uid: String?
    let fullName: String
    let email: String
    let profileImageUrl: String?
    
    var id: String {
        return uid ?? NSUUID().uuidString
    }
    
    var firstName:String {
        let formatter = PersonNameComponentsFormatter()
        let components = formatter.personNameComponents(from: fullName)
        return components?.givenName ?? fullName
    }
}

extension User {
    static let MOCK_USER = User(fullName: "Jisso", email: "jenny@blackpink.com", profileImageUrl: "jisso.bp")
}
