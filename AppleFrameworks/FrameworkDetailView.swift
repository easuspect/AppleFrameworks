//
//  FrameworkDetailView.swift
//  AppleFrameworks
//
//  Created by Tolga Telseren on 9/25/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    @Binding var isShowingDetailView: Bool
    let framework: Framework
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                
                Button {
                    isShowingDetailView = false
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }
            .padding()
            
            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                
            } label: {
                AFButton(title: "Learn More")
            }
        }
    }
}
struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(isShowingDetailView: .constant(false), framework: MockData.sampleFramework)
    }
}
