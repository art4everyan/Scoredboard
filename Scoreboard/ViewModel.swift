//
//  ViewModel.swift
//  Scoreboard
//
//  Created by Lydia Zhang on 9/8/22.
//

import Combine
import SwiftUI 

class ViewModel: ObservableObject {
    private(set) var viewIsColored = CurrentValueSubject<Bool, Never>(false)
    
    func countBump() { viewIsColored.value.toggle() }
}

class ViewModel2: ObservableObject {
    private(set) var isColored = CurrentValueSubject<Bool, Never>(false)
    @Published var vmColor: Color = .gray
    
    func vmColorChange() {
        isColored.value.toggle()
        vmColor = (isColored.value) ? .red : .gray
    }
}
