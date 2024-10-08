//
//  FrameworkDetailView.swift
//  AppleFrameworks
//
//  Created by Tolga Telseren on 9/25/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    @State private var isShowingSafari: Bool = false
    let framework: Framework
    
    var body: some View {
        VStack {
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                isShowingSafari = true
            } label: {
             //   AFButton(title: "Learn More")
                Label("Learn More", systemImage: "book.fill")
            }
            .buttonStyle(.bordered)
            .controlSize(.large)
            .tint(.red)
        }
        .fullScreenCover(isPresented: $isShowingSafari, content: { SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!) })
    }
}
struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework)
    }
}
