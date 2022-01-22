//
//  ContentView.swift
//  DetectingAppStateInSwiftUI
//
//  Created by Ramill Ibragimov on 21.01.2022.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var stateManager: AppStateManager
    
    var body: some View {
        Text("Hello, world!")
            .foregroundColor(.white)
            .font(.system(size: 80))
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.orange)
                    .frame(width: 400, height: 400)
                    .shadow(radius: 10)
            )
            .padding()
            .blur(radius: stateManager.showBlur ? 100 : 0)
    }
}
