//
//  cityscapesApp.swift
//  cityscapes
//
//  Created by Ketul Adesara on 24/05/21.
//

import SwiftUI

@main
struct cityscapesApp: App {
    @StateObject var locations = Locations()
    
    var body: some Scene {
        WindowGroup {
            TabView {
                NavigationView {
                    ContentView(location: locations.primary)
                }
                .tabItem {
                    Image(systemName: "airplane.circle.fill")
                    Text("Discover")
                }
                
                NavigationView {
                    Worldview()
                }
                .tabItem {
                    Image(systemName: "mappin.and.ellipse")
                    Text("Locations")
                }
                
                NavigationView {
                    Tipsview()
                }
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Tips")
                }
            }
            .environmentObject(locations)
        }
    }
}
