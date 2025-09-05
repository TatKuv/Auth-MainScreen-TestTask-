import SwiftUI


struct ContentView: View {
    @StateObject var viewModel = AutentificationViewModel()
    
    var body: some View {
        
        if viewModel.isSignedIn {
            
            MainTabView()
        }
        else {
            AutentificationView(viewModel: viewModel)
        }

    }
}

#Preview {
    ContentView()
}
