//
//  ChatView.swift
//  messenger-swiftui-app
//
//  Created by loratech on 12/01/24.
//

import SwiftUI

struct ChatView: View {
    @State private var messageText = ""
    var body: some View {
        VStack {
            ScrollView {
                VStack {
                    CircularProfileImageView(user: User.MOCK_USER, size: .xLarge)
                    VStack(spacing: 4) {
                        Text(User.MOCK_USER.fullName)
                            .font(.title3)
                            .fontWeight(.semibold)
                        
                        Text(User.MOCK_USER.email)
                            .font(.footnote)
                            .foregroundStyle(Color(.systemGray))
                    }
                }
                
                ForEach(0...15, id: \.self){message in
                    ChatMessageCell(isFromCurrentUser: Bool.random())
                }
                
            }
            Spacer()
            
            ZStack(alignment: .trailing) {
                TextField("Message...", text: $messageText, axis: .vertical)
                    .padding(12)
                    .padding(.trailing, 48)
                    .background(Color(.systemGroupedBackground))
                    .clipShape(Capsule())
                    .font(.subheadline)
                
                Button {
                    print("sent message!")
                }label: {
                    Text("Send")
                        .fontWeight(.semibold)
                }
                .padding(.horizontal)
            }
            .padding()
        }
    }
}

#Preview {
    ChatView()
}
