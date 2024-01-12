//
//  NewMessageView.swift
//  messenger-swiftui-app
//
//  Created by loratech on 12/01/24.
//

import SwiftUI

struct NewMessageView: View {
    
    @State private var searchText = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            ScrollView {
                TextField("To: ", text: $searchText)
                    .frame(height: 44)
                    .padding(.leading)
                    .background(Color(.systemGroupedBackground))
                
                Text("CONTACTS")
                    .foregroundStyle(.gray)
                    .font(.footnote)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                
                ForEach(0 ... 10, id: \.self){ user in
                    HStack {
                        CircularProfileImageView(user: User.MOCK_USER, size: .small)
                        
                        Text("Rose Blackpink")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        
                        Spacer()
                    }
                    .padding(.leading)
                    
                    Divider()
                        .padding(.leading, 40)
                }
            }
            .navigationTitle("New Message")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading){
                    Button("Cancel"){
                        dismiss()
                    }
                    .foregroundStyle(.black)            }
        }
        }
    }
}

#Preview {
    NavigationStack {
        NewMessageView()
    }
}
