//
//  LoginViewModel.swift
//  DesignPattern
//
//  Created by Emmanuel Okwara on 13/12/2021.
//

import Foundation

final class LoginViewModel {
    
    @Published var error: String?
    
    func login(email: String, password: String) {
        NetworkService.shared.login(email: email, password: password) { [weak self] success in
            self?.error = success ? nil : "Invalid Credentials!!!"
        }
    }
}
