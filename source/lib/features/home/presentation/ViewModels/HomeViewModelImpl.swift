//
//  HomeViewModelImpl.swift
//  Keysmith
//
//  Created by Ameya Bhagat on 30/08/23.
//

import Foundation

@MainActor
class HomeViewModelImpl: HomeViewModel {
    @Published var errorMessage: String = ""
    
    @Published var searchQuery: String = ""
    //TODO: fix this
    @Published var selectedSecretType: SecretType = .Password
    
    @Published var secrets: [SecretsListItemEntity] = []
    
    nonisolated init() {}
    
    
    func selectSecretType(_ secretType: SecretType) {
        selectedSecretType = secretType
        print("select secret type called")
    }
    
    
}
