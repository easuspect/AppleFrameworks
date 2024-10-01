//
//  FrameworkGridViewModel.swift
//  AppleFrameworks
//
//  Created by Tolga Telseren on 9/25/24.
//

import SwiftUI

class FrameworkGridViewModel: ObservableObject {
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
}
