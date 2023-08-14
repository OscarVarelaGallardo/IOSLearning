//
//  TabViewMain.swift
//  Modal
//
//  Created by Oscar Varela on 14/08/23.
//

import SwiftUI

struct TabViewMain: View {
    var body: some View {
        TabView{
            ContentView().tabItem{
                Label("Home", systemImage: "house.fill")
            }
            SegundaVista().tabItem{
                Label("Vista 2", systemImage: "plus")
            }
            TerceraVista().tabItem{
                Label("Vista 3", systemImage: "camera")
            }
        }
    }
}

