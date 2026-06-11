import UIKit
import SwiftUI


struct BillCalculatorView: View {
    let restaurantName = "Lemon Restaurant"
    @State private var adults = 1
    @State private var children = 0
    @State private var hasDiscount = false

    var body: some View {
        // --- header ---
        Section{
            HStack{
                Image(systemName: "dollarsign.circle.fill")
                    .foregroundColor(.orange)
                    .font(.title2)
                VStack(alignment: .leading){
                    Text(restaurantName)
                        .font(.title3)
                        .bold()
                    Text("Reservation form")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
            }
        }
        // --- input ---
        Section(header: Text("Your group")){
            Stepper("Adults: \(adults)", value: $adults, in: 1...10)
            Stepper("Children: \(children)", value: $children, in: 0...10)
            Toggle("Member discount", isOn: $hasDiscount)
        }
        // --- main ---

    }
}


#Preview {
    BillCalculatorView()
}

