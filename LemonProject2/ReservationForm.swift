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
    @State private var children = 0
    @State private var showMessage = false

    // computed property
    var nameFieldColor: Color {
        if userName.isEmpty {
            return .red
        } else if userName.count < 3 {
            return .orange
        } else {
            return .primary
        }
    }

    var reservationStatus: String {
        if userName.isEmpty && phoneNumber.isEmpty {
            return "Fill in you name and phone to continue"
        } else if userName.isEmpty {
            //only the name is empty : missing name
            return "Missing name"
        } else if phoneNumber.isEmpty {
            // only if phone is missing: missing phone
            return "Missing phone"
        } else {
            return "Ready to preview"
        }
    }

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
                    .padding(8)
                    .background(nameFieldColor.opacity(0.05))
                if userName.isEmpty {
                    Text("Please enter a name")
                        .font(.footnote)
                        .foregroundColor(.red)
                }
                Stepper("Guests: \(guestCount)", value: $guestCount, in: 1...maxGuests)
                if guestCount == 0 {
                    Text("Please select at least one guest")
                        .font(.footnote)
                        .foregroundColor(.red)
                }
                // warn when the party is large
                if guestCount >= 8 {
                    Text("Large group — please call ahead")
                        .font(.footnote)
                        .foregroundColor(.orange)
                }
            }
            //Create a section for the contact information
            // (phone number)
            Section(header: Text("Contact information")) {
                TextField("Phone", text: $phoneNumber)
                    .keyboardType(.numberPad)

                // add an if to check if the texfield is empty
                if phoneNumber.isEmpty {
                    Text("Phone number is required.")
                        .font(.footnote)
                        .foregroundColor(.red)
                } else if phoneNumber.count < 10 {
                    Text("Number is too short - keep trying.")
                        .font(.footnote)
                        .foregroundColor(.orange)
                } else {
                    Text("Looks good!")
                        .font(.footnote)
                        .foregroundColor(.green)
                }
            }

            Section(header: Text("Optional")) {
                Stepper("Children: \(children)", value: $children, in: 0...10)

                // add a validation and if we have children
                // let's display "Kids menu available"
                if children > 0 {
                    Text("Kids menu available")
                        .font(.footnote)
                }
                Toggle("Show an special text", isOn: $showMessage)
                if showMessage {
                    Text("Discount %")
                        .foregroundColor(.green)
                }
            }

            Section {
                Text(reservationStatus)
                    .font(.footnote)
                    .foregroundColor(.red)
            }
            Section(header: Text("Actions")) {
                Button("Preview reservation") {
                    previewText = """
                    Name: \(userName)
                    Guests: \(guestCount)
                    Phone: \(phoneNumber)
                    """
                }.disabled(userName.isEmpty)
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
