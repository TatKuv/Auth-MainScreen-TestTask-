import SwiftUI

struct ProductCardView: View {
    var product: Product
    var body: some View {
        
        VStack(alignment: .leading) {
            ZStack(alignment: .topTrailing) {
                Image(product.imageName)
                    .resizable()
                    .scaledToFill()
                    .cornerRadius(12)
                    .frame(width: 156, height: 156)
                
                Button {
                    //isFavorite.toggle()   //add to favorite Set
                } label: {
                    Image(systemName: "heart")
                        .foregroundStyle(.white)
                        .padding(8)
                        .background(.black.opacity(0.5))
                        .clipShape(Circle())
                }
                .padding(6)
            }
            Group {
                Text(product.name)
                Text(product.price, format: .currency(code: "USD"))
            }
            .foregroundStyle(.darkBlue)
            .fontWeight(.semibold)
            
            Group {
                Text("Estimated delivery: \(product.estimatedDelivery) days")
                Text(product.description)
            }
            .foregroundStyle(.darkBlueLightGray)
        }
        .font(Font.system(size: 12))
        .frame(width: 156)
    }
}

#Preview {
    ProductCardView(product: demoProducts[0])
}
