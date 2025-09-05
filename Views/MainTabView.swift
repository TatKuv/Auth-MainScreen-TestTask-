import SwiftUI

struct MainTabView: View {
    
    init() {
        UITabBar.appearance().unselectedItemTintColor = UIColor.darkBlueLight
    }
    
    var body: some View {
        TabView {
            GiftsView()
                .tabItem {
                    Label("Gifts", image: "Gifts")
                }
            Text("Gifts")
                .tabItem {
                    Label("Gifts", image: "Flower")
                }
            Text("Events")
                .tabItem {
                    Label("Events", image: "Events")
                }
            Text("Cart")
                .tabItem {
                    //Label("Cart", image: "Cart") //system "basket" is the same
                    Label("Cart", systemImage: "basket")
                        .environment(\.symbolVariants, .none)
                }
            Text("Profile")
                .tabItem {
                    Label("Profile", systemImage: "gear")
                }
        }
        .tint(.darkBlue)
    }
}

#Preview {
    MainTabView()
}
