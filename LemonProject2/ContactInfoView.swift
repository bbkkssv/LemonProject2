//
//  ContactInfoView.swift
//  LemonProject2
//
//  Created by Robert Vinson on 6/16/26.
//

import SwiftUI

struct ContactInfoView: View {
    var workingDays = ["Friday", "Saturday", "Sunday"]
    var services = ["Dine-In", "Takeout", "Delivery", "Catering", "Private Events"]

    let serviceIcons: [String: String] = [
        "Dine-In": "fork.knife",
        "Takeout": "bag.fill",
        "Delivery": "bicycle",
        "Catering": "tray.full.fill",
        "Private Events": "sparkles"
    ]

    var body: some View {
        VStack(spacing: 20) {

            // Didnt want to leave this section in there for better visual
            /*
            Text("Working days")
                .font(.title)

            ForEach(workingDays, id: \.self) { day in
                Text(day)
            }
            */

            Text("Our Services")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top)

            VStack(spacing: 12) {
                ForEach(services, id: \.self) { service in
                    HStack(spacing: 16) {
                        Image(systemName: serviceIcons[service] ?? "star.fill")
                            .font(.title3)
                            .foregroundStyle(.blue)
                            .frame(width: 32)

                        Text(service)
                            .font(.headline)

                        Spacer()
                    }
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(10)
                }
            }
            .padding(.horizontal)

            Spacer()
        }
    }
}

#Preview {
    ContactInfoView()
}
