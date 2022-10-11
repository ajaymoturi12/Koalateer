//
//  SignInView.swift
//  Koalateer
//
//  Created by Ajay Moturi on 10/4/22.
//

import SwiftUI
import Firebase

struct SignInView: View {
    @State var email: String = ""
    @State var password: String = ""
    @State var signIn: Bool=false
    @State var signUp: Bool=false
        
    var body: some View {
        NavigationStack {
            VStack {
                
                Text("Koalateer")
                    .font(.system(size:40, weight:.medium, design:.rounded))
                
                Image("Koala")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .padding()
                
                TextField(" Email:", text: self.$email)
                    .frame(width: 300, height: 50)
                    .textInputAutocapitalization(.never)
                    .disableAutocorrection(true)
                    .overlay(RoundedRectangle(cornerRadius: 12)
                        .stroke(Color(.systemGray3), lineWidth: 1)
                        .foregroundColor(.clear))
                    .padding([.top], 50)
                
                SecureField(" Password: ", text: self.$password)
                    .frame(width: 300, height: 50)
                    .textInputAutocapitalization(.never)
                    .disableAutocorrection(true)
                    .overlay(RoundedRectangle(cornerRadius: 12)
                        .stroke(Color(.systemGray3), lineWidth: 1)
                        .foregroundColor(.clear))
                    .padding()
                
                
                
                NavigationLink(value: signIn) {
                    Button(action: {
                        signIn = true
                    }, label: {
                        Text("Sign In")
                            .frame(width: 100, height: 50)
                            .foregroundColor(.white)
                            .background(.green)
                            .cornerRadius(15)
                    })
                    
                    .navigationDestination(isPresented: $signIn){
                        HomeView()
                    }
                }
                
                NavigationLink(value: signUp) {
                    Button(action: {
//                        if Koalateer.signIn(email: self.email, password: self.password) {
//                            signUp = true
//                        }
                        signIn = true
                    }, label: {
                        HStack {
                            Image(systemName: "cursorarrow")
                                .foregroundColor(Color("DarkGreen"))
                            Text("Don't have an account? Sign up!")
                                .foregroundColor(Color("DarkGreen"))
                        }
                    })
                }
                .navigationDestination(isPresented: $signUp){
                    SignUpView()
                }
                .padding()
            }
        }
    }
}


struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}

/**
func signIn(email: String, password: String) -> Bool {
    Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                if error == nil {
                    print("success")
                    return true
                } else {
                    print("login failed")
                    return false
                }
    }
}
*/
