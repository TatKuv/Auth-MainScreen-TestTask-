import SwiftUI
import Firebase
import GoogleSignIn

@main
struct Auth_MainScreen_TestTask_App: App {
    
    init() {
        FirebaseApp.configure()
        
        if let clientID = FirebaseApp.app()?.options.clientID {
            GIDSignIn.sharedInstance.configuration = GIDConfiguration(clientID: clientID)
            print("GoogleSignIn configured with ClientID: \(clientID)")
        } else {
            print("ClientID not found")
        }
    }
    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
            
                .onOpenURL { url in
                    GIDSignIn.sharedInstance.handle(url)
                }
                .onAppear {
                    GIDSignIn.sharedInstance.restorePreviousSignIn { user, error in
                        if let error = error {
                            print(" Failed to restore sign in:", error.localizedDescription)
                        } else if let user = user {
                            print(" Restored user:", user.profile?.name ?? "Unknown")
                        }

                    }
                }
        }
    }
}
