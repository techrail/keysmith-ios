import SwiftUI

struct ContentView: View {
    @State var selectedTab: Int = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
                .tag(0)
            FavouritesView()
                .tabItem {
                    Label("Favourites", systemImage: "star")
                }
                .tag(1)
            AddView()
                .tabItem {
                    Label("Add", systemImage: "plus")
                }
                .tag(2)
            KeySmithView()
                .tabItem {
                    Label("Keysmith", systemImage: "lock.square.stack")
                }
                .tag(3)
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
                .tag(4)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
