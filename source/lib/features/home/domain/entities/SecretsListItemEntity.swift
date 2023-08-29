//
//  SecretsListItemEntity.swift
//  Keysmith
//
//  Created by Ameya Bhagat on 29/08/23.
//

import Foundation

///Represents a secret in a list.
///
///``SecretsListItemEntity`` provides metadata for a secret which can be
///displayed as a cell in a List.
///
///The ``id`` of the item can be used to fetch all the details of a secret.
///
struct SecretsListItemEntity: Identifiable {
    ///Unique id of this secret in the database.
    ///
    ///Use this to fetch the details of the item.
    let id: String
    
    ///Brief description of this item.
    let title: String
    
    ///Whether the user has this item selected as a 'favourite'.
    let favourite: Bool
    
    ///The type of data stored as a secret in this item.
    let type: SecretType
    
    ///Additional categorisation proivided for the secret by the user.
    let tags: [SecretTag]
}
