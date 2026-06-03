//
//  AboutView.swift
//  LemonProject2
//
//  Created by Robert Vinson on 6/2/26.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        VStack(spacing: 16) {
            Text("About Little Lemon")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(.green)

            Text("Im a little tea pot short and stout here is my handle here is my spout. I'm a tea pot, and I'm short and stout. I'm a tea pot, and I'm short and stout.")
                .font(.caption)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 20)

            HStack(spacing: 20) {
                Image(systemName: "fork.knife")
                Image(systemName: "leaf")
                Image(systemName: "map")
            }
            .font(.title3)
            .foregroundStyle(.yellow)
        }
        .padding()
    }
}


#Preview {
    AboutView()
}
