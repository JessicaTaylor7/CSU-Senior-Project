//
//  Live_BetterApp.swift
//  Live Better
//
//  Created by Jesse Taylor on 1/26/24.
//

import SwiftUI

@main
struct Live_BetterApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: [Symptoms.self])
    }
}
