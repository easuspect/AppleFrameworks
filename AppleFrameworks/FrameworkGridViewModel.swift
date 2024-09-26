//
//  FrameworkGridViewModel.swift
//  AppleFrameworks
//
//  Created by Tolga Telseren on 9/25/24.
//

import SwiftUI

class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework?{
        didSet {
            isShowingDetailView = true
        }
    }
    @Published var isShowingDetailView = false
}
