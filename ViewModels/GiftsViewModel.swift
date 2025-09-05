import Foundation

class GiftsViewModel: ObservableObject {
    @Published var selectedCountry: Country = .usa
    @Published var products: [Product] = demoProducts
    
    var productsSection : [String] = ["Next Day Delivery","New Popular Arrivals","Mixed Flowers","Thank you"]
    
    
}
