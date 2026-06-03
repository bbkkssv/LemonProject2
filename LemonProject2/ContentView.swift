import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "graduationcap.fill") // view
                .imageScale(.large)
                .foregroundStyle(.red)
            Text("Cohort 10") // view
            Text("Welcome")
                .font(.caption)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

