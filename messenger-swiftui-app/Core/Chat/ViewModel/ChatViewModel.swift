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
    
    let service: ChatService
    
    init(user: User){
        self.service = ChatService(chatPartner: user)
        observeMessage()
    }
    
    func observeMessage(){
        service.observeMessages() { messages in
            self.messages.append(contentsOf: messages)
        }
    }
    func sendMessage(){
        service.sendMessage(messageText)
    }
}
