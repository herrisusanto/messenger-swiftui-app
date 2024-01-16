//
//  Constants.swift
//  messenger-swiftui-app
//
//  Created by loratech on 16/01/24.
//

import Foundation
import Firebase

struct FirestoreConstants {
    
    static let UserCollection = Firestore.firestore().collection("users")
    static let MessagesCollection = Firestore.firestore().collection("messages")
}
