//
//  BillCalculatorView.swift
//  LemonProject2
//
//  Created by Robert Vinson on 6/9/26.
//

import SwiftUI

struct BillCalculatorView: View {
    let restaurantName = "Lemon Restaurant"
    let adultPrice: Double = 15.00
    let childPrice: Double = 8.00
    let taxRate: Double = 0.08
    let discountRate: Double = 0.1
    
    
    @State private var adults = 1
    @State private var children = 0
    @State private var hasDiscount = false
    
    // functions
    
    // 1. calculate subtotal
    func calculateSubtotal(adults: Int, children: Int) -> Double{
        return Double(adults) * adultPrice + Double(children) * childPrice
    }

    // 2. discount amount  — returns how much is taken off
    func calculateDiscount(subtotal: Double, hasDiscount:Bool) -> Double{
        if !hasDiscount {
            return 0.0
        }
        if subtotal >= 100{
            return subtotal * 0.20
        }else if subtotal >= 50{
            return subtotal * 0.15
        }else{
            return subtotal * 0.10
        }
    }

    // 3. calculate the tax — applied AFTER the discount
    
    func calculateTax(amount: Double) -> Double{
        return amount * taxRate
    }

    // 4. calculate the grand total — call the func above
    

    var body: some View {
        Form {
            // --- header ---
            Section{
                HStack{
                    Image(systemName: "dollarsign.circle.fill")
                        .foregroundStyle(.orange)
                        .font(.title2)
                    VStack(alignment: .leading){
                        Text(restaurantName)
                            .font(.title3)
                            .bold()
                        Text("Calculate Bill")
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                    }
                }
                .padding(.vertical, 4)
            }
            // --- input ---
            Section(header:Text("Your group")){
                Stepper("Adults: \(adults)", value:$adults, in: 1...20)
                Stepper("Children: \(children)", value:$children, in: 0...20)
                Toggle("Apply discount", isOn: $hasDiscount)
            }
            // --- breakdown prices ---
            Section(header: Text("Breakdown prices")){
                let subtotal = calculateSubtotal(adults:adults,children:children)
                let discount =
                    calculateDiscount(subtotal:subtotal,hasDiscount:hasDiscount)
                let afterDiscount = subtotal - discount
                let tax = calculateTax(amount:afterDiscount)
                let total = afterDiscount + tax
                
                HStack{
                    Text("Subtotal")
                        .foregroundStyle(.primary)
                    Spacer()
                    Text("$\(String(format: "%.2f", subtotal))")
                }

                if hasDiscount{
                    HStack{
                        Text("Discount")
                            .foregroundStyle(.green)
                        Spacer()
                        Text("-$\(String(format: "%.2f", discount))")
                            .foregroundStyle(.green)
                    }
                }
                
                HStack{
                    Text("Taxes (8%)")
                        .foregroundStyle(.primary)
                    Spacer()
                    Text("$\(String(format: "%.2f", tax))")
                }
                
                HStack{
                    Text("Total")
                        .font(.headline)
                    Spacer()
                    Text("$\(String(format: "%.2f", total))")
                        .font(.headline)
                }
            }
        }
    }
}


#Preview {
    BillCalculatorView()
}
