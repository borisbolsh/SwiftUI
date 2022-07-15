//
//  LandmarksApp.swift
//  WatchLandmarks WatchKit Extension
//
//  Created by Boris Bolshakov on 15.07.22.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
