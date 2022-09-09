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
    
    @State private(set) var viewColor: Color = .gray 
    @State private(set) var viewColor2: Color = .gray
    
    var body: some View {
        List {
            HStack {
                // UI logic in vm
                Button { } label: { Text("vm color").font(.title) }
                .tint(model2.vmColor)
                .onTapGesture { model2.vmColorChange() }
                
                Button { } label: { Text("vm color").font(.title) }
                .tint(model2.vmColor2)
                .onTapGesture { model2.vmColorChange() }
        
                
                // UI logic in View
                Button { } label: { Text("view color").font(.title) }
                .tint(viewColor)
                .onTapGesture { model.countBump() }
                .onReceive(model.viewIsColored, perform: updateCountButtonTitle) // subscribed to bool
                
                Button { } label: { Text("view color").font(.title) }
                .tint(viewColor2)
                .onTapGesture { model.countBump() }
                .onReceive(model.viewIsColored, perform: updateCountButtonTitle) // subscribed to bool
            }
        }
    }
    
    private func updateCountButtonTitle(bool: Bool) {
        viewColor = (bool) ? .red : .gray
        viewColor2 = (bool) ? .blue : .gray
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// view line = 15 + 5
// vm line = 7 + 16
