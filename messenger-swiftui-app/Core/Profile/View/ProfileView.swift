//
//  ProfileView.swift
//  messenger-swiftui-app
//
//  Created by loratech on 12/01/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            VStack {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .foregroundStyle(Color(.systemGray4))
                Text("Black Panther")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                List {
                    Section {
                        ForEach(SettingsOptionViewModel.allCases){option in
                            HStack{
                                Image(systemName: option.image)
                                    .frame(width: 24, height: 24)
                                    .foregroundStyle(option.imageBackgroundColor)
                                Text(option.title)
                                    .font(.subheadline)
                                    
                            }
                        }
                    }
                    Section {
                        Button("Log Out"){
                            
                        }
                        Button("Delete Account"){
                            
                        }
                    }
                    .foregroundStyle(.red)
                }
            }
        }
    }
}

#Preview {
    ProfileView()
}