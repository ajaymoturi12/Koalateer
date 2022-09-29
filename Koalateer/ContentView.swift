//
//  ContentView.swift
//  Koalateer
//
//  Created by Ajay Moturi on 9/20/22.
//

import SwiftUI


struct ContentView: View {
    @State var email = ""
    @State var password = ""
    @State var signIn: Bool=false
        
    var body: some View {
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
                    SwiftUIView()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
