//
//  FrameworkGridViewModel.swift
//  AppleFrameworks
//
//  Created by Nathan Foo on 2/9/25.
//

import Foundation

final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView = false
}
