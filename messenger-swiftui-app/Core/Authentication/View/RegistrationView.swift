//
//  RegistrationView.swift
//  messenger-swiftui-app
//
//  Created by loratech on 09/01/24.
//

import SwiftUI

struct RegistrationView: View {
    
    @State private var email = ""
    @State private var fullName = ""
    @State private var password = ""
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Spacer()
            
            Image("messenger")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .padding()
            
            VStack(spacing: 16) {
                TextField("Enter your email", text: $email)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
                TextField("Enter your fullName", text: $fullName)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
                SecureField("Enter your password", text: $password)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
            }
            
            Button{
                print("Press sign up!")
            }label: {
                Text("Sign Up")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 340, height: 44)
                    .background(Color(.systemBlue))
                    .cornerRadius(10)
            }
            .padding(.vertical)
            
            Spacer()
            
            Divider()
            
            Button{
                dismiss()
            }label:{
                HStack(spacing:3){
                    Text("Already have an account?")
                    Text("Sign In")
                        .fontWeight(.semibold)
                }
                .font(.footnote)
            }
            .padding(.vertical)
            
        }
    }
}

#Preview {
    RegistrationView()
}
