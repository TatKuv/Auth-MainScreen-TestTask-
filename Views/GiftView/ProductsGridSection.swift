import SwiftUI

struct ProductsGridSection: View {
    var products: [Product]
    
    let columns = [
        GridItem(.adaptive(minimum: 160))
    ]
    
    var body: some View {
        LazyVStack {
            CategoryMenuTabView()
            
            LazyVGrid (columns: columns) {
                ForEach(products) { product in
                    NavigationLink(value: product) {
                        ProductCardView(product: product)
                    }
                }
            }        }
        .padding()
        .scrollContentBackground(.hidden)
        .background(Color.white)
        .clipShape(.rect(cornerRadius: 16))
        .padding()
    }
}

#Preview {
    //ProductsGridSection()
}
