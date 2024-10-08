//
//  FrameworkTitleView.swift
//  AppleFrameworks
//
//  Created by Tolga Telseren on 10/1/24.
//

import SwiftUI

struct FrameworkTitleView: View {
            
    let framework: Framework
        
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(Color(.label))
                .scaledToFit()
                .minimumScaleFactor(0.6)
                    
        }
        .padding()
    }
}


struct FrameworkTitleView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkTitleView(framework: MockData.sampleFramework)
    }
}
