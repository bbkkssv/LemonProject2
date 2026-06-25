//
//  DishDetailsView.swift
//  LemonProject2
//
//  Created by Robert Vinson on 6/23/26.
//

import SwiftUI

// Dish Struct
struct Dish {
    var name: String
    var category: String
    var price: Double
    var description: String
    var imageName: String
}



struct DishDetailsView: View {
    let dish: Dish

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Image(dish.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
                    .frame(height: 250)
                    .clipped()
                    .cornerRadius(12)

                VStack(alignment: .leading, spacing: 8) {
                    Text(dish.name)
                        .font(.largeTitle)
                        .fontWeight(.bold)

                    HStack {
                        Text(dish.category.uppercased())
                            .font(.subheadline)
                            .foregroundColor(.secondary)

                        Spacer()

                        Text(String(format: "$%.2f", dish.price))
                            .font(.title3)
                            .fontWeight(.semibold)
                            .foregroundColor(.green)
                    }
                }

                Divider()

                Text(dish.description)
                    .font(.body)
                    .foregroundColor(.gray)
            }
            .padding()
        }
        .navigationTitle(dish.name)
    }
}

#Preview {
    DishDetailsView(
        dish: Dish(
            name: "Greek Salad",
            category: "Salads",
            price: 9.99,
            description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
            imageName: "greek-salad-image"
        )
    )
}
