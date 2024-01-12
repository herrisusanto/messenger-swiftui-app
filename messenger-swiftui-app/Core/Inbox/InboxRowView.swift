//
//  InboxRowView.swift
//  messenger-swiftui-app
//
//  Created by loratech on 12/01/24.
//

import SwiftUI

struct InboxRowView: View {
    var body: some View {
        HStack(alignment: .top, spacing: 12) {
            CircularProfileImageView(user: User.MOCK_USER, size: .medium)
            
            VStack(alignment: .leading, spacing: 4) {
                Text("Jisso Blackpink")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                Text("Hi, Good morning! I'm here to sing for you all.")
                    .font(.subheadline)
                    .foregroundStyle(.gray)
                    .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                    .frame(maxWidth: UIScreen.main.bounds.width - 180, alignment: .leading)
            }
            
            HStack {
                Text("Yesterday")
                Image(systemName: "chevron.right")
            }
            .font(.footnote)
            .foregroundStyle(.gray)
        } 
        .frame(height: 72)
    }
}

#Preview {
    InboxRowView()
}
