//
//  RestaurantInfoView.swift
//  LemonProject2
//
//  Created by Robert Vinson on 6/16/26.
//

import SwiftUI

struct RestaurantInfoView: View {
    let socialMedia = [
        "Instagram": "@Lemon",
        "Facebook": "facebook.com/lemon",
        "TikTok": "@restaurant.lemon"
    ]

    var body: some View {
        NavigationStack {
            List {
                Section("Social Media") {
                    ForEach(Array(socialMedia), id: \.key) { (key, value) in
                        HStack {
                            Text(key)
                                .foregroundColor(.blue)

                            Spacer()

                            Text(value)
                                .font(.title3)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    RestaurantInfoView()
}
