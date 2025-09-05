import Foundation
import FirebaseAuth
import GoogleSignIn


class AutentificationViewModel: ObservableObject {
    @Published var user: User? = nil
    @Published var isSignedIn: Bool = false
    let authService: AuthService
    
    init(authService: AuthService = AuthService()) {
        self.authService = authService
        self.isSignedIn = UserDefaults.standard.string(forKey: "accessToken") != nil
        print(isSignedIn)
    }
    
    func handleSignInButtonGoogle() {
        guard let rootViewController = UIApplication.shared.rootViewController else {
            return
        }
        GIDSignIn.sharedInstance.signIn(withPresenting: rootViewController) { signInResult, error in
                guard let result = signInResult else {
                    print(error?.localizedDescription ?? "Unknown error")
                    return
                }
                
                let user = result.user
                self.user = Auth.auth().currentUser
                self.isSignedIn = true
                
                print("Logged in as \(user.profile?.name ?? "Unknown")")
                
                if let idToken = user.idToken?.tokenString {
                    self.authService.sendTokenToBackend(idToken: idToken)
                } else {
                    print("No ID token available")
                }
            }
    }
}
