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
                .tint((model.viewIsColored) ? .red : .gray)
                .onTapGesture { model.countBump() }

                Button { } label: { Text("view color").font(.title) }
                .tint((model.viewIsColored) ? .blue : .gray)
                .onTapGesture { model.countBump() }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
