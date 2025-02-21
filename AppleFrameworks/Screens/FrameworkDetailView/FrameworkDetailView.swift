//
//  FrameworkDetailView.swift
//  AppleFrameworks
//
//  Created by Nathan Foo on 2/9/25.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack {
            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
//                AFButton(title: "Learn More")
                Label("Learn More", systemImage: "book.fill")
            }
            .buttonStyle(.bordered)
            .controlSize(.large)
            .tint(.red)
        }
        // or sheet
        .fullScreenCover(isPresented: $isShowingSafariView,
               content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        })
    }
}

#Preview {
    // For sample data while building
    // FrameworkDetailView(framework: MockData.sampleFramework)
    FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
}
