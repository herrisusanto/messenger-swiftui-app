//
//  ChatMessageCell.swift
//  messenger-swiftui-app
//
//  Created by loratech on 12/01/24.
//

import SwiftUI

struct ChatMessageCell: View {
    
    let isFromCurrentUser: Bool
    
    var body: some View {
        HStack {
            if isFromCurrentUser {
                Spacer()
                Text("This is a test message from now!And gonna make you happy by becoming a good true listener")
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemBlue))
                    .foregroundStyle(.white)
                    .clipShape(ChatBubble(isFromCurrentUser: isFromCurrentUser))
                    .frame(maxWidth: UIScreen.main.bounds.width / 1.5, alignment: .trailing)
                
            } else {
                HStack(alignment: .bottom) {
                    CircularProfileImageView(user: User.MOCK_USER, size: .xxSmall)
                    Text("This is a test message from now!And gonna make you happy by becoming a good true listener")
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
    ChatMessageCell(isFromCurrentUser: true)
}
