import Foundation

enum Country: String, CaseIterable {
    case usa
    case europe
    case china
    case uk
    case japan
    
    
    var flag: String {
        switch self {
        case .usa: return "🇺🇸"
        case .europe: return "🇪🇺"
        case .china: return "🇨🇳"
        case .uk: return "🇬🇧"
        case .japan: return "🇯🇵"
            
        }
    }
    
    var currency: String {
        switch self {
        case .usa: return "USD"
        case .europe: return "EUR"
        case .china: return "CNY"
        case .uk: return "GBP"
        case .japan: return "JPY"
        }
    }
    
    var title: String {
        switch self {
        case .usa: return "United States"
        case .europe: return "Europe"
        case .china: return "China"
        case .uk: return "United Kingdom"
        case .japan: return "Japan"
        }
    }
}
