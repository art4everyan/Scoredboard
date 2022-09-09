//
//  ContentView.swift
//  Scoreboard
//
//  Created by Lydia Zhang on 9/8/22.
//

import SwiftUI
import Combine

struct ContentView: View {
    @EnvironmentObject var model: ViewModel
    @EnvironmentObject var model2: ViewModel2
    
    @State private var color: Color = .gray

    var body: some View {
        HStack {
            // UI logic in vm
            Button { model2.vmColorChange() } label: { Text("vm color").font(.title) }
            .tint(model2.vmColor)
            
            
            // UI logic in View
            Button {model.countBump() } label: { Text("view color").font(.title) }
                .tint(color)
                .onReceive(model.viewIsColored, perform: update)
        }
    }
    
    private func update(val: Bool) {
        color = (val) ? .red : .gray
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
