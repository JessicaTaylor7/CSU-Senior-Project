//
//  Live_BetterApp.swift
//  Live Better
//
//  Created by Jesse Taylor on 1/26/24.
//

import SwiftUI
import SwiftData

@main
struct Live_BetterApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        // Create storage for Symptoms object and use storage for Live_BetterApp
        .modelContainer(for: [Symptoms.self, Measurements.self])
    }
}
