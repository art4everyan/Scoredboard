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
        VStack {
            // UI logic in vm
            Button {
                model2.isColored.value.toggle()
                model2.bind()
            } label: { Text("vm color").font(.title) }
            .tint(model2.vmColor)
               
            // UI logic in View
            Button { model.viewIsColored.value.toggle() } label: { Text("view color").font(.title) }
                .tint(color)
                .onReceive(model.viewIsColored, perform: { color = ($0) ? .red : .gray })
        }
    }
    
    private func test() {
        model.viewIsColored.value.toggle()
        model2.isColored.value.toggle()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
