//
//  ChatViewModel.swift
//  messenger-swiftui-app
//
//  Created by loratech on 15/01/24.
//

import Foundation

class ChatViewModel: ObservableObject {
    
    @Published var messageText = ""
    @Published var messages = [Message]()
    
    let user: User
    
    init(user: User){
        self.user = user
        observeMessage()
    }
    
    func observeMessage(){
        MessageService.observeMessages(chatPartner: user) { messages in
            self.messages.append(contentsOf: messages)
        }
    }
    func sendMessage(){
        MessageService.sendMessage(messageText, toUser: user)
    }
}
