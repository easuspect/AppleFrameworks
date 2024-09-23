//
//  FrameworkGridView.swift
//  AppleFrameworks
//
//  Created by Tolga Telseren on 9/23/24.
//

import SwiftUI

struct FrameworkGridView: View {
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    var body: some View {
        LazyVGrid(columns: columns) {
            ForEach(MockData.frameworks, id: \.self) { framework in
                FrameworkTitleView(imageName: framework.imageName, name: framework.name)
                
            }
        }
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
    }
}

struct FrameworkTitleView: View {
    let imageName: String
    let name: String
    
    var body: some View {
        VStack {
            Image("app-clip")
                .resizable()
                .frame(width: 90, height: 90)
            Text("App Clips")
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
            
        }
    }
}
