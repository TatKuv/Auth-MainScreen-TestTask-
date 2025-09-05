import SwiftUI

struct CategoryMenuTabView: View {
    let giftTypes = ["Giftboxes", "Flovers", ""]
    let recipientCategories = ["For Her", "For Him", "For Baby"]
    let popularityCategories = ["Popular", "New Arrivals", "Best Sellers"]
    
    var body: some View {
        VStack {
            
            Button {
            } label: {
                Text("View all categories")
                    .foregroundColor(.darkBlue)
                    .frame(height: 32)
                    .padding(.horizontal, 12)
                    .overlay(
                        RoundedRectangle(cornerRadius: 23)
                            .stroke(.darkBluePrelight, lineWidth: 1)
                    )
            }
        
            
            HStack {
                CategoriesMenuView(categories: giftTypes)
                CategoriesMenuView(categories: recipientCategories)
                CategoriesMenuView(categories: popularityCategories)
            }
            .padding(.vertical, 10)
        }
        .font(Font.system(size: 14))
    }
}

#Preview {
    CategoryMenuTabView()
}
