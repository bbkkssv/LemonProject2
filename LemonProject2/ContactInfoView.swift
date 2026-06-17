//
//  ContactInfoView.swift
//  LemonProject2
//
//  Created by Robert Vinson on 6/16/26.
//

import SwiftUI

struct ContactInfoView: View {
    var workingDays = ["Friday", "Saturday", "Sunday"]

    var body: some View {

        Text("Working days")
            .font(.title)

        ForEach(workingDays, id: \.self) { day in
            Text(day)
        }

    }
}

#Preview {
    ContactInfoView()
}
