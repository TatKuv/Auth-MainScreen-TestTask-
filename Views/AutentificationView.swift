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
                    .foregroundStyle(.darkBluePrelight)
                    .padding(.top, 48)
                    .padding(.leading,63)
                
                VStack {
                    VStack(alignment: .leading, spacing: 24) {
                        Text("WELCOME")
                            .font(.custom("BebasNeue-Regular", size: 64))
                            .tracking(-1)
                            .foregroundColor(.darkBlue)
                            .frame(height: 55)
                        
                        Text("Enter your phone number. We will send you an SMS with a confirmation code to this number.")
                            .font(.system(size: 14))
                            .lineSpacing(5)
                            .foregroundStyle(.darkBlueLightGray)
                            .frame(width: 352, height: 42, alignment: .leading)
                    }
                    
                    Spacer()
                    
                    Image("LogoFlower") //можно в ZSack
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
                    .background(.adaptiveWhite)
                    .cornerRadius(10)
                    .padding(.horizontal,16)
                    
                    Text("By continuing, you agree to Assetsy’s Terms of Use and Privacy Policy")
                        .font(.system(size: 11))
                        .lineSpacing(2)
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.darkGrayNew)
                        .frame(width: 197, height: 42)
                    
                    Spacer()
                
                }
                
                    //.navigationTitle("WELCOME")
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
