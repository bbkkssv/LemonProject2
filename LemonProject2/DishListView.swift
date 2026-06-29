//
//  DishListView.swift
//  LemonProject2
//
//  Created by Robert Vinson on 6/23/26.
//

import SwiftUI

struct DishListView: View {
    @State private var dishes: [Dish] = [
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
            category: "Main Courses",
            price: 14.50,
            description: "Lorem ipsum dolor sit amet consectetur, adipiscing elit aliquet egestas mauris sociis, hendrerit eget aliquam turpis. Varius maecenas faucibus mi interdum odio inceptos",
            imageName: "pasta-image"
        ),
        Dish(
            name: "Pizza",
            category: "Main Courses",
            price: 12.00,
            description: "Lorem ipsum dolor sit amet consectetur, adipiscing elit aliquet egestas mauris sociis, hendrerit eget aliquam turpis. Varius maecenas faucibus mi interdum odio inceptos",
            imageName: "pizza-image"
        ),
        Dish(
            name: "Tiramisu",
            category: "Desserts",
            price: 8.50,
            description: "Lorem ipsum dolor sit amet consectetur, adipiscing elit aliquet egestas mauris sociis, hendrerit eget aliquam turpis. Varius maecenas faucibus mi interdum odio inceptos",
            imageName: "tiramisu-image"
        ),
        Dish(
            name: "Cheesecake",
            category: "Desserts",
            price: 7.50,
            description: "Lorem ipsum dolor sit amet consectetur, adipiscing elit aliquet egestas mauris sociis, hendrerit eget aliquam turpis. Varius maecenas faucibus mi interdum odio inceptos",
            imageName: "cheesecake-image"
        )
    ]
    
    @State private var selectedCategory:String = "All"
    @State private var showAddDish = false
    @State private var newDish = Dish(
        name: "",
        category: "",
        price: 0,
        description: "",
        imageName: ""
    )

    var filteredDishes:[Dish] {
        if selectedCategory == "All"{
            return dishes}
        else {
            return dishes.filter{ $0.category == selectedCategory}
        }
            
    }
    
    
    var body: some View {
        NavigationView {
            VStack {
                
                HStack {
                    Spacer()
                    
                    Button(action : {
                        showAddDish = true
                    }){
                        Image(systemName: "plus.circle.fill")
                        Text("Add Dish")
                    }
                }
                .padding(.horizontal)
                
                Picker("Category", selection: $selectedCategory) {
                    Text("All").tag("All")
                    Text("Breakfast").tag("Breakfast")
                    Text("Salads").tag("Salads")
                    Text("Main Courses").tag("Main Courses")
                    Text("Desserts").tag("Desserts")
                }
                .pickerStyle(.segmented)
                
                List(filteredDishes, id: \.name) { dish in
                    NavigationLink(destination: DishDetailsView(dish: dish)) {
                        HStack(spacing: 12) {
                            Image(dish.imageName)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 70, height: 70)
                                .cornerRadius(8)

                            VStack(alignment: .leading, spacing: 4) {
                                Text(dish.name)
                                    .font(.headline)
                                Text(dish.category)
                                    .font(.subheadline)
                                    .foregroundStyle(.primary)
                                Text(String(format: "$%.2f", dish.price))
                                    .font(.subheadline)
                                    .foregroundStyle(.green)
                            }
                        }
                    }
                }
                .navigationTitle("Menu")
            }
            .sheet(isPresented: $showAddDish) {
                AddDishViewForm(newDish: $newDish, dishes: $dishes )
                
            }
        }
    }
}

#Preview {
    DishListView()
        .preferredColorScheme(.dark)
}
