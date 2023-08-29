//
//  HomeView.swift
//  Keysmith
//
//  Created by Ameya Bhagat on 07/08/23.
//

import SwiftUI
import Dependiject

struct HomeView: View {
    //MARK: - PROPERTIES
    //TODO: uncomment when implemented
//    @Store private var vm = Factory.shared.resolve((any HomeViewModel).self)

    //TODO: move to view model
    @State private var searchText = ""
    
    //MARK: - BODY
    var body: some View {
        NavigationStack {
            Text("Home")
                .navigationTitle("")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        //TODO: the name of the menu should display currently selected filter.
                        Menu("All Secrets") {
                            //TODO: Create a button for each filter.
                            Button("All Secrets") {}
                            ForEach(SecretType.allCases, id: \.self) { secret in
                                Button(secret.rawValue) {}
                            }
                        }
                        .menuStyle(.automatic)
                    }
                }
        }
        .searchable(text: $searchText)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
