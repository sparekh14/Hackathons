//
//  PennAppsApp.swift
//  PennApps
//
//  Created by Annika Santhanam on 3/18/22.
//

import SwiftUI
import Firebase

@main
struct PennAppsApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
