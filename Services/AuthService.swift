import Foundation


class AuthService {
    
    func sendTokenToBackend(idToken: String) {
        guard let url = URL(string: "https://api.court360.ai/rpc/client") else {
            print("Invalid URL")
            return
        }
        
        let requestBody = FirebaseLoginRequest(
            jsonrpc: "2.0",
            method: "auth.firebaseLogin",
            params: .init(fbIdToken: idToken),
            id: 1
        )
        
        guard let data = try? JSONEncoder().encode(requestBody) else { return }
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpBody = data
        
        URLSession.shared.dataTask(with: request) { data, _, error in
            if let error = error {
                print("Backend request failed:", error.localizedDescription)
                return
            }
            
            guard let data = data else { return }
                
                do {
                    let decoded = try JSONDecoder().decode(FirebaseLoginResponse.self, from: data)
                    if let accessToken = decoded.result?.accessToken {
                        UserDefaults.standard.set(accessToken, forKey: "accessToken")
                        print("Backend response is successfully decoded")
                    }
                } catch {
                    print("Could not decode backend response:", error)
                }
            }.resume()
    }
}
