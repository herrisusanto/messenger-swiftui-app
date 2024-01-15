//
//  LoginViewModel.swift
//  messenger-swiftui-app
//
//  Created by loratech on 13/01/24.
//

import Foundation


class LoginViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = "" 
    
    func login()async throws{
        try await AuthService.shared.login(withEmail: email, password: password)
    }
}
