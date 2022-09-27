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
            TextField("Email:", text: self.$email)
                .padding()
            
            SecureField("Password: ", text: self.$password)
                .padding()
            
           
            NavigationLink(destination: SwiftUIView(), isActive: self.$signIn) {
                
                Button(action: {
                    signIn = true
                }, label: {
                    Text("Sign In")
                })
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
