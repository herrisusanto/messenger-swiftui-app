//
//  User.swift
//  messenger-swiftui-app
//
//  Created by loratech on 12/01/24.
//

import Foundation


struct User: Codable, Identifiable, Hashable {
    var id = NSUUID().uuidString
    let fullName: String
    let email: String
    let profileImageUrl: String?
}

extension User {
    static let MOCK_USER = User(fullName: "Jisso", email: "jenny@blackpink.com", profileImageUrl: "jisso.bp")
}
