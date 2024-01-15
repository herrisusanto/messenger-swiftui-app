//
//  ChatViewModel.swift
//  messenger-swiftui-app
//
//  Created by loratech on 15/01/24.
//

import Foundation

class ChatViewModel: ObservableObject {
    
    @Published var messageText = ""
    let user: User
    
    init(user: User){
        self.user = user
    }
    func sendMessage(){
        MessageService.sendMessage(messageText, toUser: user)
    }
}
