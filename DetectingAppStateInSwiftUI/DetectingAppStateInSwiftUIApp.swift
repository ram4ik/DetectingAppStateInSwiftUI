//
//  DetectingAppStateInSwiftUIApp.swift
//  DetectingAppStateInSwiftUI
//
//  Created by Ramill Ibragimov on 21.01.2022.
//

import SwiftUI
import Foundation

@main
struct DetectingAppStateInSwiftUIApp: App {
    
    @Environment(\.scenePhase) var phase
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onChange(of: phase) { newPhase in
                    switch newPhase {
                    case .active:
                        print("App in active state")
                    case .background:
                        print("App is in background")
                    case .inactive:
                        print("App is in inactive state")
                    @unknown default:
                        print("Unknown")
                    }
                    
                }
            
            
            
            
//                .onReceive(NotificationCenter.default.publisher(for: UIApplication.didBecomeActiveNotification)) { _ in
//                    print("App in active state")
//                }
//                .onReceive(NotificationCenter.default.publisher(for: UIApplication.willResignActiveNotification )) { _ in
//                    print("App is in background")
//                }
        }
    }
}
