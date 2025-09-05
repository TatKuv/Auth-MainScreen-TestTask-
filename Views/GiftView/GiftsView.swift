import SwiftUI

struct GiftsView: View {
    @StateObject private var viewModel = GiftsViewModel()
    let columns = [
        GridItem(.adaptive(minimum: 160))
    ]
    
    var body: some View {
        
        NavigationStack {
            ZStack {
                Color.backgroundLightBlue
                    .ignoresSafeArea()
                
                ScrollView {
                    LazyVStack(alignment: .leading, pinnedViews: .sectionHeaders) {
                        
                        Section {
                            EventsSectionView()
                        }
                        
                        Section {
                            ProductsByCategoriesSectionView(productsSection: viewModel.productsSection)
                        }
                        .padding(.top,6)
                        
                        
                        
                        Section {
                            ProductsGridSection(products: viewModel.products)
                        }
                    }
                }
            }
            
            .navigationDestination(for: Product.self) { product in
                //ProductDetailView(product: product)
                Color.backgroundLightBlue
            }
            
            
            .navigationTitle("GIFTS") // шрифт и буквы
            //.searchable(text: $viewModel.searchText, prompt: "Search")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    HStack(spacing: 5) {
                        Text("Deliver to")
                        Menu {
                            ForEach(Country.allCases, id: \.self) { country in
                                Button(country.title) {
                                    viewModel.selectedCountry = country
                                }
                            }
                            
                        } label: {
                            HStack(alignment: .center) {
                                Text("\(viewModel.selectedCountry.flag)  \(viewModel.selectedCountry.currency)")
                                    
                                Image(systemName: "chevron.down")
                                    .font(.subheadline)
                            }
                        }
                    }
                    .foregroundStyle(.darkBlue)
                    .padding(.horizontal, 12)
                    .padding(.vertical, 10)
                }
            }
        }
    }
}

#Preview {
    GiftsView()
}
