//
//  MenuListView.swift
//  LemonProject2
//
//  Created by Robert Vinson on 6/18/26.
//

import SwiftUI

struct MenuListView: View {
    let menuCategories = [
        "Breakfast": [
            ["name": "Pancakes", "price": "9", "image": "pancakes"],
            ["name": "Omelette", "price": "11", "image": "omelette"],
            ["name": "French Toast", "price": "10", "image": "frenchtoast"]
        ],
        "Main Courses": [
            ["name": "Pizza", "price": "12", "image": "pizza"],
            ["name": "Pasta", "price": "10", "image": "pasta"],
            ["name": "Salad", "price": "18", "image": "salad"]
        ],
        "Desserts": [
            ["name": "Cake", "price": "7", "image": "cake"],
            ["name": "Ice Cream", "price": "5", "image": "icecream"],
            ["name": "Cookie", "price": "3", "image": "cookie"]
        ],
        "Drinks": [
            ["name": "Coffee", "price": "4", "image": "coffee"],
            ["name": "Juice", "price": "5", "image": "juice"],
            ["name": "Soda", "price": "3", "image": "soda"]
        ]
    ]

    var body: some View {
        List {
            ForEach(menuCategories.keys.sorted(), id: \.self) { category in
                
                Section(header: Text(category)) {
                    ForEach(menuCategories[category] ?? [], id: \.self) { dish in
                        HStack {
                            Image(dish["image"] ?? "")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40, height: 30)
                            Text(dish["name"] ?? "")
                            Spacer()
                            Text("$\(dish["price"] ?? "")")
                                .foregroundColor(.black)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    MenuListView()
}
