import SwiftUI
import Dependiject

@main
struct MainApp: App {
    
    init() {
        registerServices()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
    
    private func registerServices() {
        //test code
        Factory.register {
            Service(.transient, (any HomeViewModel).self) { resolver in                
                HomeViewModelImpl()
            }
        }
    }
}
