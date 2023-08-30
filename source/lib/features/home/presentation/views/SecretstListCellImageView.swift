//
//  SecretstListCellImageView.swift
//  Keysmith
//
//  Created by Ameya Bhagat on 30/08/23.
//

import SwiftUI

struct SecretstListCellImageView: View {
    //TODO: Image should be loaded from the datasource
    var body: some View {
        Image(systemName: "photo.fill")
            .resizable()
            .frame(width: 25, height: 25)
            .clipShape(Circle())
            .foregroundColor(.gray)
    }
}

struct SecretstListCellImageView_Previews: PreviewProvider {
    static var previews: some View {
        SecretstListCellImageView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
