//
//  ViewModel.swift
//  Scoreboard
//
//  Created by Lydia Zhang on 9/8/22.
//

import Combine
import SwiftUI 

class ViewModel: ObservableObject {
    private(set) var viewIsColored = false
    
    func countBump() { viewIsColored.toggle() }
}

class ViewModel2: ObservableObject {
    private(set) var isColored: Bool = false
    
    @Published var vmColor: Color = .gray
    @Published var vmColor2: Color = .gray
    
    func vmColorChange() {
        isColored.toggle()
        vmColor = (isColored) ? .red : .gray
        vmColor2 = (isColored) ? .blue : .gray
    }
}
