import SwiftUI

struct ProductsByCategoriesSectionView: View {
    
    var productsSection: [String]
    // var showAll
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            
            LazyHStack(alignment: .top) {
                
                ForEach(productsSection.indices, id: \.self) { index in
                    
                    VStack {
                        
                        Image("Category\(index)")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipShape(.rect(cornerRadius: 12))
                        
                        Text(productsSection[index])
                            .multilineTextAlignment(.center)
                            .lineLimit(2)
                            .frame(width: 95)
                            .font(.caption)
                    }
                    //.frame(width: 100)
                }
                
                Button {
                    //New View to Categories
                } label: {
                    Text("Show all")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(height: 100, alignment: .center)
                }
                
            }
            .foregroundColor(.darkBlue)
            .padding(.leading)
        }
    }
}

#Preview {
    ProductsByCategoriesSectionView(productsSection: ["Next Day Delivery","New Popular Arrivals","Mixed Flowers","Thank you"])
}
