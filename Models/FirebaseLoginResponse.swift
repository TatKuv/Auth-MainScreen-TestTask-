import Foundation


struct FirebaseLoginResponse: Codable {
    let jsonrpc: String
    let result: ResultData?
    let id: Int
    
    struct ResultData: Codable {
        let accessToken: String
        let me: User
    }
    
    struct User: Codable {
        let id: Int
        let name: String
    }
}
