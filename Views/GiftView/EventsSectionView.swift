import SwiftUI

struct EventsSectionView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack (spacing: 5) {
                ForEach(0..<4) { _ in
                    
                    Image("Event1")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 350, height: 150)
                        .clipShape(.rect(cornerRadius: 16))
                }
            }
            .padding(.leading)
        }
    }
}

#Preview {
    EventsSectionView()
}
