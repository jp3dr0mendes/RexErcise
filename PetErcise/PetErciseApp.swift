//
//  PetErciseApp.swift
//  PetErcise
//
//  Created by João Pedro Albuquerque on 18/06/24.
//

import SwiftUI
import SwiftData

@main
struct PetErciseApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }.modelContainer(for: [User.self, Timeline.self, Pet.self, Item.self])
    }
}
