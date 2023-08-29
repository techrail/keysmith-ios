//
//  SecretTag.swift
//  Keysmith
//
//  Created by Ameya Bhagat on 29/08/23.
//

import Foundation
///Represets a tag added to a secret.
///
///These tags are created by user and as such each tag has unique ID.
///However, two tags are meant to be the same if their ``description`` matches,
/// even if their ``id`` are mismatched.
struct SecretTag: Equatable, Identifiable {
    let id: String
    let description: String
    
    static func ==(lhs: SecretTag, rhs: SecretTag) -> Bool {
        return lhs.id == rhs.id || lhs.description == rhs.description
    }
}
