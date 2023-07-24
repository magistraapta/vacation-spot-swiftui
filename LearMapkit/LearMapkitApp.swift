//
//  LearMapkitApp.swift
//  LearMapkit
//
//  Created by magistra aptam on 24/07/23.
//

import SwiftUI

@main
struct LearMapkitApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
