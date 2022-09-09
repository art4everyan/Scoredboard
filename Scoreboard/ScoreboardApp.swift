//
//  ScoreboardApp.swift
//  Scoreboard
//
//  Created by Lydia Zhang on 9/8/22.
//

import SwiftUI

@main
struct ScoreboardApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(ViewModel()).environmentObject(ViewModel2())
        }
    }
}
