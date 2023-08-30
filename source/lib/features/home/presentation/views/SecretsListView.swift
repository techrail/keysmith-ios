//
//  SecretsListView.swift
//  Keysmith
//
//  Created by Ameya Bhagat on 30/08/23.
//

import SwiftUI

struct SecretsListView: View {
    //MARK: - PROPERTIES
    let secrets: [SecretsListItemEntity]
    
    //MARK: - BODY
    var body: some View {
        List {
            ForEach(secrets, id: \.id) { secret in
                SecretsListCellView(listEntity: secret)
            }
            //TODO: add navigation Link
//            .navigationDestination(for: <#T##Hashable.Protocol#>, destination: <#T##(Hashable) -> View#>)
        }
    }
}

//MARK: - PREVIEW
struct SecretsListView_Previews: PreviewProvider {
    static var previews: some View {
        SecretsListView(secrets: [
            SecretsListItemEntity(
            id: "1",
            title: "A - The Company",
            favourite: true,
            type: .Password,
            tags: [
                SecretTag(id: "1", description: "web"),
                SecretTag(id: "2", description: "shopping")
            ]
            ),
            SecretsListItemEntity(
            id: "2",
            title: "AsBI bank",
            favourite: false,
            type: .Password,
            tags: [
                SecretTag(id: "1", description: "online"),
                SecretTag(id: "2", description: "bank")
            ]
            ),
            SecretsListItemEntity(
            id: "3",
            title: "Apecart",
            favourite: false,
            type: .Password,
            tags: [
                SecretTag(id: "1", description: "tech"),
                SecretTag(id: "2", description: "shopping")
            ]
            ),
            SecretsListItemEntity(
            id: "4",
            title: "ACACI bank",
            favourite: false,
            type: .Password,
            tags: [
                SecretTag(id: "1", description: "online"),
            ]
            ),
            SecretsListItemEntity(
            id: "5",
            title: "Avenue Fashion",
            favourite: false,
            type: .Password,
            tags: [
                SecretTag(id: "1", description: "clothing"),
                SecretTag(id: "2", description: "shopping"),
                SecretTag(id: "3", description: "online"),
            ]
            ),
            SecretsListItemEntity(
            id: "6",
            title: "Appenheiner is a cash grab",
            favourite: true,
            type: .Note,
            tags: []
            ),
            SecretsListItemEntity(
            id: "7",
            title: "Beta software",
            favourite: false,
            type: .Note,
            tags: []
            )
        ])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
