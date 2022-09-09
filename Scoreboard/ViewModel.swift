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
    //private var subscriptions = Set<AnyCancellable>()
    @Published var vmColor: Color = .gray
    
    func bind() {
        self.vmColor = isColored.value ? .blue : .gray
        //isColored.sink(receiveValue: { self.vmColor = ($0) ? .blue : .gray }).store(in: &subscriptions)
    }
}
