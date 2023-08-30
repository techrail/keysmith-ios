//
//  TabBarView.swift
//  Keysmith
//
//  Created by Ameya Bhagat on 13/08/23.
//

import SwiftUI
//TODO: Write documentation describing depedancies and funciton of this view.

///A tab bar for the ``HomeView``.
///
struct TabBarView: View {
    //MARK: - PROPERTIES
    //TODO: get property values from ViewModel when it's ready.
    let tabBarItems: [String]
    @State private var selectedIndex = 0
    
    //MARK: - BODY
    var body: some View {

        ScrollViewReader { scrollView in
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(tabBarItems.indices, id: \.self) { index in
                        Text(tabBarItems[index])
                            .font(.subheadline)
                            .padding(.horizontal)
                            .padding(.vertical, 4)
                            .foregroundColor(selectedIndex == index ? .white : .black)
                            .background(Capsule().foregroundColor(selectedIndex == index ? .purple : .clear))
                            .onTapGesture {
                                withAnimation(.easeOut) {
                                    
                                    selectedIndex = index
                                }
                            }
                            
                    }
                }
                .padding()
                .background(Color(.systemGray5))
                .cornerRadius(25)
            }
            .shadow(radius: 3, x: 1, y: 2)
        }
    }
}

//MARK: - PREVIEW
struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView(tabBarItems: ["item 1", "item 2", "item 3", "item 4"])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
