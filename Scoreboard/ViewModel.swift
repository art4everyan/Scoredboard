//
//  ViewModel.swift
//  Scoreboard
//
//  Created by Lydia Zhang on 9/8/22.
//

import Foundation
import Combine
import SwiftUI // for vmColor

class ViewModel: ObservableObject {
    private(set) var viewIsColored = CurrentValueSubject<Bool, Never>(false)
    private var subscriptions = Set<AnyCancellable>()
    
    func countBump() { viewIsColored.value.toggle() }
}

class ViewModel2: ObservableObject {
    private var subscriptions = Set<AnyCancellable>()
    
    private let color = PassthroughSubject<Color, Never>()
    private let color2 = PassthroughSubject<Color, Never>()
    
    private(set) var isColored: Bool = false
    
    @Published var vmColor: Color = .gray
    @Published var vmColor2: Color = .gray
    
    func vmColorChange() {
        isColored.toggle()
        
        color.send((isColored) ? .red : .gray)
        color2.send((isColored) ? .blue : .gray)
        
        color.sink(receiveValue: { // subscribed to bool
            self.vmColor = $0
            self.vmColor2 = $0
        }).store(in: &subscriptions)
    }
}
