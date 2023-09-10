//
//  HomeViewListCellView.swift
//  Keysmith
//
//  Created by Ameya Bhagat on 30/08/23.
//

import SwiftUI

struct SecretsListCellView: View {
    //MARK: -  PROPERTIES
    let listEntity: SecretsListItemEntity
    
    //MARK: -  BODY
    var body: some View {
        
        HStack {
            SecretstListCellImageView()
            VStack(alignment: .leading, spacing: 0) {
                Text(listEntity.title)
                    .font(.body)                    
                HStack(spacing: 2) {
                    CaptionView(description: listEntity.type.rawValue, isTag: false)
                    ForEach(listEntity.tags) { tag in
                        CaptionView(description: tag.description, isTag: true)
                    }
                }
                .frame(height: 25)
                .padding(.top, 5)
            }
            Spacer()
            Image(systemName: listEntity.favourite ? "star.fill" : "star")
                .resizable()
                .frame(width: 20, height: 20)
                .foregroundColor(.blue)
        }
        .frame(width: .infinity)
    }
}

//MARK: -  PREVIEW
struct SecretsListCellView_Previews: PreviewProvider {
    static var previews: some View {
        SecretsListCellView(listEntity: SecretsListItemEntity(
            id: "",
            title: "First Secret",
            favourite: true,
            type: .Password,
            tags: [SecretTag(id: "", description: "personal")]))
        .previewLayout(.sizeThatFits)
        .padding()
    }
        
}
