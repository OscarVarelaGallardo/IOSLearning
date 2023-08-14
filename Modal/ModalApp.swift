//
//  ModalApp.swift
//  Modal
//
//  Created by Oscar Varela on 14/08/23.
//

import SwiftUI

@main
struct ModalApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
           // ContentView()
             //   .environment(\.managedObjectContext, persistenceController.container.viewContext)
            TabViewMain()
        }
    }
}
