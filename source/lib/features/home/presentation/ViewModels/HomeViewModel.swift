//
//  HomeViewModel.swift
//  Keysmith
//
//  Created by Ameya Bhagat on 29/08/23.
//

import Foundation
import Dependiject

/// View model for the home view.
///
/// Manages the calls to the data layer for the home view.
///
@MainActor
protocol HomeViewModel: AnyObservableObject, ObservableObject {
    /// Description of the error.
    ///
    /// This will be empty when no error has occured.
    var errorMessage: String { get }
    
    ///The query provided in the search bar by the user.
    ///
    var searchQuery: String { get set }
    
    ///Currently selected secret type.
    ///
    var selectedSecretType: SecretType { get }
    
    ///List of secrets displayed in the list view.
    var secrets: [SecretsListItemEntity] { get }
    
    
    ///Updates the list of secrets with a specific type of secret.
    ///
    func selectSecretType(_ secretType: SecretType)
}
