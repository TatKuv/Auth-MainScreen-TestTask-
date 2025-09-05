import Foundation



struct FirebaseLoginRequest: Codable {
    let jsonrpc: String
    let method: String
    let params: Params
    let id: Int
    
    struct Params: Codable {
        let fbIdToken: String
    }
}
