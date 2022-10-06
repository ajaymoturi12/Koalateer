//
//  KoalateerApp.swift
//  Koalateer
//
//  Created by Ajay Moturi on 9/20/22.
//

import SwiftUI
import Firebase

@main
struct KoalateerApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
