//
//  HomeViewModel.swift
//  DesignPattern
//
//  Created by Emmanuel Okwara on 13/12/2021.
//

import Foundation

final class HomeViewModel {
    
    @Published var welcomeMessage: String?
    
    func getLoggedInUser() {
        let user = NetworkService.shared.getLoggedInUser()
        self.welcomeMessage = "Hello, \(user.firstName) \(user.lastName)"
    }
    
}
