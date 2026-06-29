//
//  LemonProject2App.swift
//  LemonProject2
//
//  Created by Robert Vinson on 6/2/26.
//

import SwiftUI

@main
struct LemonProject2App: App {
    var body: some Scene {
        WindowGroup {
            //ContentView()
           ReservationForm()
                .preferredColorScheme(.dark)
        }
    }
}
