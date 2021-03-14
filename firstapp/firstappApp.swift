//
//  firstappApp.swift
//  firstapp
//
//  Created by mac on 31/01/2021.
//

import SwiftUI

@main
struct firstappApp: App {
    @StateObject var Locations = locations()
    
    var body: some Scene {
        WindowGroup {
            TabView {
                NavigationView {
                    ContentView(location: Locations.primary)
            }
            .tabItem {
                Image(systemName: "airplane.circle.fill")
                Text("Discover")
            }
                NavigationView {
                    worldview()
                }
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("Locations")
                }
                
                NavigationView {
                    tipsView()
                }
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Tips")
                }
        }
            .environmentObject(Locations)
    }
}
}
