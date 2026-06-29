//
//  AddDishViewForm.swift
//  LemonProject2
//
//  Created by Robert Vinson on 6/27/26.
//

import SwiftUI

struct AddDishViewForm: View {

    @Environment(\.dismiss) var dismiss
    @Binding var newDish: Dish
    @Binding var dishes: [Dish]

    var body: some View {
        Form {
            Section(header: Text("New Dish")) {
                TextField("Name", text: $newDish.name)
                TextField("Category", text: $newDish.category)
                TextField("Price", value: $newDish.price, format: .number)
                TextField("Description", text: $newDish.description)
                TextField("Image Name", text: $newDish.imageName)
                    .textInputAutocapitalization(.never)
            }
            
            Button("Add Dish") {
                dishes.append(newDish)
                
                newDish = Dish(name: "",
                               category: "",
                               price: 0,
                               description: "",
                               imageName: "")

                dismiss()
            }
        }
    }
}

#Preview {
//    AddDishViewForm(newDish: .constant(Dish(
//        name: "",
//        category: "",
//        price: 0,
//        description: "",
//        imageName: ""
//    )))
}
