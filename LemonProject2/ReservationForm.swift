import SwiftUI

struct ReservationForm: View {
    // constants
    let restaurantName = "Little Lemon"
    let maxGuests = 10


    // State variables
    // " if this value changes, update the UI"
    @State private var userName = ""
    @State private var guestCount = 0
    @State private var phoneNumber = "555-123-45678"
    @State private var previewText = ""

    var body: some View {
        Form {
            //header
            Section {
                HStack {
                    Image(systemName: "fork.knife")
                        .foregroundColor(.orange)
                        .font(.title2)
                    VStack(alignment: .leading) {
                        Text(restaurantName)
                            .font(.title3)
                            .bold()
                        Text("Reservation form")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                }
            }
            // reservation details
            Section(header: Text("Reservation Details")) {
                TextField("Name", text: $userName)
                    .textInputAutocapitalization(.words)
                    .textFieldStyle(.roundedBorder)
                    .autocorrectionDisabled(true)
                Stepper("Guests: \(guestCount)", value: $guestCount, in: 1...maxGuests)
            }
            //Create a section for the contact information
            // (phone number)
            Section(header: Text("Contact information")) {
                TextField("Phone", text: $phoneNumber)
                    .keyboardType(.numberPad)
            }

            Section(header: Text("Actions")) {
                Button("Preview reservation") {
                    previewText = """
                    Name: \(userName)
                    Guests: \(guestCount)
                    Phone: \(phoneNumber)
                    """
                }
            }
            Section(header: Text("Preview")) {
                Text(previewText.isEmpty ? "No information yet" : previewText)
                    .font(.footnote)
                    .foregroundColor(.secondary)
                    .padding(.vertical, 5)
                    .textSelection(.enabled)
            }
        }
        .navigationTitle("Reservation")
    }
}

#Preview {
    NavigationStack {
        ReservationForm()
    }
}
