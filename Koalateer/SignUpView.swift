//
//  SignUpView.swift
//  Koalateer
//
//  Created by Ajay Moturi on 10/4/22.
//

import SwiftUI
import Firebase
import FirebaseAuth
import FirebaseFirestore

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
                    let dateFormatter = DateFormatter()
                    Koalateer.signUp(email: self.email, password: self.password, first: self.first, last: self.last, school: self.school.rawValue, birthdate: dateFormatter.string(from: self.birthdate), gender: self.gender.rawValue) { (successful, result) in
                        if successful {
                            signedUp = true
                        } else {
                            signedUp = false
                            print(result)
                        }
                        
                    }
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

func signUp(email: String, password: String, first: String, last: String, school:String, birthdate: String, gender: String, completion: @escaping (Bool, String) -> Void) {
    
    Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
        if error != nil {
            completion(false, "error in creating user account")
        }
        else {
            let db = Firestore.firestore()
            let user = authResult!.user
            db.collection("users").document(user.uid).setData(["email": email, "first": first, "last": last, "school": school, "birthdate": birthdate, "gender": gender], merge: true)
            completion(true, "success")
        }
    }
}
