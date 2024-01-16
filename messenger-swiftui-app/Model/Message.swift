//
//  Message.swift
//  messenger-swiftui-app
//
//  Created by loratech on 15/01/24.
//

import Foundation
import Firebase
import FirebaseFirestoreSwift


struct Message: Identifiable, Codable, Hashable {
    @DocumentID var messageId: String?
    let fromId: String
    let toId: String
    let messageText: String
    let timestamp: Timestamp
    
    var user: User?
    
    var id: String {
        return messageId ?? NSUUID().uuidString
    }
    
    var chatPartnerId: String {
        return fromId == Auth.auth().currentUser?.uid ? toId : fromId
    }
    
    var isFromCurrentUser: Bool {
        return fromId == Auth.auth().currentUser?.uid
    }
}

extension Message {
    static let MOCK_MESSAGE = Message(messageId: NSUUID().uuidString, fromId: "39RmNhxJwERQf7aBUmjM0s6QCYK2", toId: "TNvCRSaL6fOoRAn3GDekYMnRZkc2", messageText: "How are you today?", timestamp: Timestamp(seconds:1705400607, nanoseconds:87165000), user: nil)
    
    static let MOCK_MESSAGES = [
        Message(messageId: NSUUID().uuidString, fromId: "39RmNhxJwERQf7aBUmjM0s6QCYK2", toId: "TNvCRSaL6fOoRAn3GDekYMnRZkc2", messageText: "How are you today?", timestamp: Timestamp(seconds:1705400607, nanoseconds:87165000), user: nil),
        Message(messageId: NSUUID().uuidString, fromId: "39RmNhxJwERQf7aBUmjM0s6QCYK2", toId: "TNvCRSaL6fOoRAn3GDekYMnRZkc2", messageText: "How are you today?", timestamp: Timestamp(seconds:1705400607, nanoseconds:87165000), user: nil)]
}
