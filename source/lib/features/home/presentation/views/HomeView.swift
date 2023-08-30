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
    @Store private var vm: any HomeViewModel = Factory.shared.resolve((any HomeViewModel).self)
    
    
    //MARK: - BODY
    var body: some View {
        //TODO: Use this VM and search logic
        NavigationStack {
            Text(vm.searchQuery)
                .navigationTitle("")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        //TODO: the name of the menu should display currently selected filter.
                        Menu(String(describing: vm.selectedSecretType.self)) {
                            //TODO: Create a button for each filter. Fix the filter cases
                            Button("All Secrets") {}
                            ForEach(SecretType.allCases, id: \.self) { secret in
                                Button(secret.rawValue) {
                                    vm.selectSecretType(secret)
                                }
                            }
                        }
                        .menuStyle(.automatic)
                    }
                }
        }
        .searchable(text: $vm.searchQuery)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
