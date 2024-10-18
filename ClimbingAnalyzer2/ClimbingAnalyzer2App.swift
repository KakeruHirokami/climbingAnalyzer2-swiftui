//
//  ClimbingAnalyzer2App.swift
//  ClimbingAnalyzer2
//
//  Created by 広上駆 on 2024/10/18.
//

import SwiftUI
import SwiftData

@main
struct ClimbingAnalyzer2App: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
