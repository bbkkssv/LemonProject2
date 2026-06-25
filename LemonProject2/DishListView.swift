//
//  DishListView.swift
//  LemonProject2
//
//  Created by Robert Vinson on 6/23/26.
//

import SwiftUI

struct DishListView: View {
    var dishes: [Dish] = [
        Dish(
            name: "Pancake",
            category: "Breakfast",
            price: 7.99,
            description: "Lorem ipsum dolor sit amet consectetur, adipiscing elit aliquet egestas mauris sociis, hendrerit eget aliquam turpis. Varius maecenas faucibus mi interdum odio inceptos",
            imageName: "pancake-image"
        ),
        Dish(
            name: "Greek Salad",
            category: "Salads",
            price: 11.00,
            description: "Lorem ipsum dolor sit amet consectetur, adipiscing elit aliquet egestas mauris sociis, hendrerit eget aliquam turpis. Varius maecenas faucibus mi interdum odio inceptos",
            imageName: "greek-salad-image"
        ),
        Dish(
            name: "Pasta",
            category: "Main Course",
            price: 14.50,
            description: "Lorem ipsum dolor sit amet consectetur, adipiscing elit aliquet egestas mauris sociis, hendrerit eget aliquam turpis. Varius maecenas faucibus mi interdum odio inceptos",
            imageName: "pasta-image"
        ),
        Dish(
            name: "Pizza",
            category: "Main Course",
            price: 12.00,
            description: "Lorem ipsum dolor sit amet consectetur, adipiscing elit aliquet egestas mauris sociis, hendrerit eget aliquam turpis. Varius maecenas faucibus mi interdum odio inceptos",
            imageName: "pizza-image"
        )
    ]


    var body: some View {
        NavigationView {
            List(dishes, id: \.name) { dish in
                NavigationLink(destination: DishDetailsView(dish: dish)) {
                    Image(dish.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 70, height: 70)

                    VStack{
                        Text(dish.name)
                        Text(dish.category)
                        Text(String(format: "%.2f", dish.price))
                        //Text(dish.description)
                    }
                }
            }
        }
    }
}

#Preview {
    DishListView()
}
