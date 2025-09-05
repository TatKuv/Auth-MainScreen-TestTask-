import SwiftUI

struct CategoriesMenuView: View {
    var categories: [String]
    
    
    var body: some View {
        Menu {
            ForEach(categories, id: \.self) { category in
                Text(category)
            }
        } label: {
            
            Group {
                Text(categories[0])
                Image(systemName: "chevron.down")
            }
        }
        .foregroundStyle(.darkBlue)
        .frame(height: 32)
        .padding(.horizontal,12)
        .background(.backgroundLightBlue)
        .cornerRadius(23)
    }
}

#Preview {
    CategoriesMenuView(categories: ["News", "Sport", "Music"])
}
