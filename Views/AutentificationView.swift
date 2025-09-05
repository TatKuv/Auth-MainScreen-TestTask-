import GoogleSignIn
import SwiftUI

struct AutentificationView: View {
    //@StateObject private var viewModel = AutentificationViewModel()
    
    var viewModel: AutentificationViewModel
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.backgroundLightBlue
                    .ignoresSafeArea()
                Image("Vector")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 597, height: 537)
                    .frame(minWidth: 0, maxWidth: .infinity)
                
                VStack {
                    //Text("WELCOME")
                    Text("Enter your phone number. We will send you an SMS with a confirmation code to this number.")
                        .font(.system(size: 14))
                        .foregroundStyle(.darkBlueLightGray)
                        .frame(width: 352, height: 42)
                    Spacer()
                    
                    Image("LogoFlower")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 171, height: 285)
                    
                    Group {
                        Button {
                            
                        } label: {
                            Text("\(Image(systemName: "apple.logo")) Continue with Apple") //aplle logo bigger
                        }
                        Button {
                            viewModel.handleSignInButtonGoogle()
                        } label: {
                            //Text("\(Image("GoogleLogo")) Continue with Google")
                            Label("Continue with Google", image: "GoogleLogo")
                        }
                    }
                    .foregroundStyle(.black)
                    .padding()
                    .frame(width: 362)
                    .background(Color.white)
                    .cornerRadius(10)
                    .padding(.horizontal,16)
                    
                    Text("By continuing, you agree to Assetsy’s Terms of Use and Privacy Policy")
                        .font(.system(size: 11))
                        .foregroundStyle(Color(red: 58 / 255.0, green: 58 / 255.0, blue: 58 / 255.0))
                        .frame(width: 352, height: 42)
                    
                    Spacer()
                
                }
                
                    .navigationTitle("WELCOME")
                    .toolbar {
                        ToolbarItem(placement: .topBarTrailing) {
                            Button("Skip") {
                                
                            }
                            .foregroundStyle(.darkBlue)
                        }
                    }
            }
        }
    }
}

#Preview {
    AutentificationView(viewModel: AutentificationViewModel())
}
