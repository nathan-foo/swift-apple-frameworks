//
//  FrameworkGridView.swift
//  AppleFrameworks
//
//  Created by Nathan Foo on 2/9/25.
//

import SwiftUI

struct FrameworkGridView: View {
    
    // Use when initializing new model
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView {
            List {
                // ForEach(MockData.frameworks, id: \.self) if not conforming to identifiable
                ForEach(MockData.frameworks) { framework in
                    NavigationLink(destination: FrameworkDetailView(framework: framework, isShowingDetailView: $viewModel.isShowingDetailView)) {
                        FrameworkTitleView(framework: framework)
                    }
                    .listRowBackground(Color.clear)
                }
            }
            .navigationTitle("🍎 Frameworks")
        }
        .accentColor(Color(.label))
    }
}

#Preview {
    FrameworkGridView()
}
