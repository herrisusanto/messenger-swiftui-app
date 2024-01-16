//
//  ChatMessageCell.swift
//  messenger-swiftui-app
//
//  Created by loratech on 12/01/24.
//

import SwiftUI

struct ChatMessageCell: View {
    
    let message: Message
    
    private var isFromCurrentUser: Bool {
        return message.isFromCurrentUser
    }
    
    var body: some View {
        HStack {
            if isFromCurrentUser {
                Spacer()
                Text(message.messageText)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemBlue))
                    .foregroundStyle(.white)
                    .clipShape(ChatBubble(isFromCurrentUser: isFromCurrentUser))
                    .frame(maxWidth: UIScreen.main.bounds.width / 1.5, alignment: .trailing)
                
            } else {
                HStack(alignment: .bottom) {
                    CircularProfileImageView(user: User.MOCK_USER, size: .xxSmall)
                    Text(message.messageText)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(uiColor: .systemGray5))
                        .foregroundStyle(.black)
                        .clipShape(ChatBubble(isFromCurrentUser: isFromCurrentUser))
                        .frame(maxWidth: UIScreen.main.bounds.width / 1.75, alignment: .leading)
                }
                Spacer()
            }
        }
        .padding(.horizontal, 8)
    }
}

#Preview {
    ChatMessageCell(message: Message.MOCK_MESSAGE)
}
