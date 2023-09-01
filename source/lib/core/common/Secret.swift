//
//  Secret.swift
//  Keysmith
//
//  Created by Ameya Bhagat on 01/09/23.
//

import Foundation

///Defines all the properties a secret should have.
///
///This protocol distils all the metadata required for all the
///secrets to have that are created by the user.
///
protocol Secret: Identifiable, Hashable, Codable, Equatable {
    ///Unique id of this secret in the database.
    ///
    ///Use this to fetch the details of the item.
    var id: String { get }
    
    ///Brief description of this item.
    var title: String { get }
    
    ///Whether the user has this item selected as a 'favourite'.
    var favourite: Bool { get }
    
    ///The type of data stored as a secret in this item.
    var type: SecretType { get }
    
    ///Image of the service for which the secret is being created.
    var thumbnailImage: String? { get }
    
    ///Additional categorisation proivided for the secret by the user.
    var tags: [SecretTag] { get }
}
