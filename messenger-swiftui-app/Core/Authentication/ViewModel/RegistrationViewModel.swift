//
//  RegistrationViewModel.swift
//  messenger-swiftui-app
//
//  Created by loratech on 13/01/24.
//

import Foundation

class RegistrationViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    @Published var fullName = ""
    
    func register()async throws {
        try await AuthService.shared.register(withEmail: email, password: password, fullName: fullName)
    }
}
