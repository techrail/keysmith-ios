//
//  CaptionView.swift
//  Keysmith
//
//  Created by Ameya Bhagat on 30/08/23.
//

import SwiftUI

struct CaptionView: View {
    //MARK: - PROPERTIES
    let description: String
    let isTag: Bool
    
    //MARK: - BODY
    var body: some View {
        Text(description)
            .font(.system(size: 10, design: .rounded))            
            .lineLimit(1)
            .padding(.top, 2)
            .padding(.bottom, 3)
            .padding(.horizontal, 4)
            
            .foregroundColor(.white)
            .background(Color( isTag ? .systemBlue : .systemYellow))
            .cornerRadius(isTag ? 20 : 5)
            .frame(height: 50)
        
    }
}

struct CaptionView_Previews: PreviewProvider {
    static var previews: some View {
        CaptionView(description: "tag", isTag: true)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
