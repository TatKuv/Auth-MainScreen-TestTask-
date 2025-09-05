import Foundation


public struct Product: Identifiable, Hashable {
    public let id: Int
    let name: String
    let description: String
    let imageName: String
    let price: Double
    let estimatedDelivery: Int
    
    var isFavorite: Bool = false
}

public let demoProducts: [Product] = [
    Product(id: 1, name: "Gift Box", description: "Nice products including our newest product and it launches rocket to space", imageName: "gift1", price: 120, estimatedDelivery: 2),
    Product(id: 2, name: "Gift Box S", description: "Nice products including our newest product and it launches rocket to space", imageName: "gift2", price: 120, estimatedDelivery: 2),
    Product(id: 3, name: "Perfume", description: "Nice products including our newest product and it launches rocket to space", imageName: "gift3", price: 120, estimatedDelivery: 2),
    Product(id: 4, name: "Watch", description: "Nice products including our newest product and it launches rocket to space", imageName: "gift4", price: 120, estimatedDelivery: 2),
    Product(id: 5, name: "Jewelry", description: "Nice products including our newest product and it launches rocket to space", imageName: "gift5", price: 120, estimatedDelivery: 2)
]
