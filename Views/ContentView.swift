import SwiftUI

//изменить шрифты заголовков
//добавить кнопки ивентам
//добавить поиск в нужное место
//добавить вход через эпл!

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
