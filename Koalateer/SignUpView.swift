//
//  SignUpView.swift
//  Koalateer
//
//  Created by Ajay Moturi on 10/4/22.
//

import SwiftUI

struct SignUpView: View {
    
    enum Gender: String, CaseIterable, Identifiable {
        var id: String {self.rawValue}
        case male
        case female
        case other
    }
    
    enum School: String, CaseIterable, Identifiable {
        var id: String {self.rawValue}
        case GeorgiaTech
        case KennesawState
        case GSU
    }
    
    @State var first = ""
    @State var last = ""
    @State var email = ""
    @State var password = ""
    @State var gender: Gender = .male
    @State var school: School = .GeorgiaTech
    @State var birthdate = Date()
    
    @State var signedUp: Bool = false
    
    var body: some View {
        NavigationStack {
            Form(content: {
                Section(header: Text("Name")) {
                    TextField("First Name", text: $first)
                    TextField("Last Name", text: $last)
                }
                
                Section(header: Text("Credentials")) {
                    TextField("Email address", text: $email)
                    TextField("Password", text: $password)
                }
                
                Section(header: Text("Info")) {
                    Picker("Gender", selection: $gender) {
                        ForEach(Gender.allCases) { gender in
                            Text(gender.rawValue.capitalized).tag(gender)
                        }
                    }
                    
                    DatePicker("Date of Birth", selection: $birthdate,
                               displayedComponents: [.date])
                }
                
                Section(header: Text("School")) {
                    Picker("School", selection: $school) {
                        ForEach(School.allCases) { school in
                            Text(school.rawValue.capitalized).tag(school)
                        }
                    }
                }
                
            })
            
            NavigationLink(value: signedUp, label: {
                Button(action: {
                    signedUp = true
                }, label: {
                    Text("Sign Up")
                        .frame(width: 100, height: 50)
                        .foregroundColor(.white)
                        .background(.green)
                        .cornerRadius(15)
                })
            })
            .navigationDestination(isPresented: $signedUp) {
                HomeView()
            }
        }

    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
