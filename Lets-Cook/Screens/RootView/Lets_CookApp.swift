//
//  Lets_CookApp.swift
//  Lets-Cook
//
//  Created by Shashank Pandey on 31/12/23.
//

import SwiftUI
import SwiftData

@main
struct Lets_CookApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
            UserDetail.self
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: modelConfiguration)
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()
    @State var isHomeShowing = false
    var body: some Scene {
        WindowGroup {
            if isHomeShowing{
                TabViewScreen()
            }else{
                OnboardView(showHome:$isHomeShowing)
            }
            
        }
        .modelContainer(sharedModelContainer)
    }
}
