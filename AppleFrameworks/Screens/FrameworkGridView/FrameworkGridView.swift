//
//  FrameworkGridView.swift
//  AppleFrameworks
//
//  Created by Tolga Telseren on 9/23/24.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel: FrameworkGridViewModel = FrameworkGridViewModel()
    
   
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                        }
                    }
                }
            }
                .navigationTitle("🍎 Frameworks")
                .sheet(isPresented: $viewModel.isShowingDetailView) {
                    FrameworkDetailView(isShowingDetailView: $viewModel.isShowingDetailView, framework: viewModel.selectedFramework!)
            }
        }
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}

