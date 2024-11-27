//
//  HealthView.swift
//  Live Better
//
//  Created by Jessica Taylor on 6/25/24.
//

import Foundation
import SwiftUI
import SwiftData

struct HealthView: View {
    // Access the environment's model context to interact with the data store
    @Environment(\.modelContext) var context
    
    // Query to fetch measurements from the data store, sorted by date in reverse order (most recent first)
    @Query(sort: \Measurements.date, order: .reverse) var measurements: [Measurements]
    
    // State variable to control the visibility of the sheet for adding a new measurement
    @State private var isShowingMeasurementSheet = false
    
    // State variable to hold the measurement being edited (used for updating existing entries)
    @State private var editMeasurement: Measurements?
    
    var body: some View {
        NavigationStack {
            // Display a list of health measurements
            List {
                // Loop through the list of measurements and display each one
                ForEach(measurements) { measurement in
                    // Each measurement is a NavigationLink to the update view for that specific measurement
                    NavigationLink(destination: UpdateMeasurementSheet(measurement: measurement)) {
                        // Custom view to display measurement details
                        HealthLog(measurement: measurement)
                    }
                    .buttonStyle(PlainButtonStyle()) // Makes the link look like a standard list item
                }
                // Enable deletion of measurements from the list
                .onDelete { indexSet in
                    for index in indexSet {
                        context.delete(measurements[index]) // Remove measurement from the data store
                    }
                }
            }
            // Sheet to display the AddMeasurementSheet when adding a new measurement
            .sheet(isPresented: $isShowingMeasurementSheet) {
                AddMeasurementSheet()
            }
            // Sheet to display the UpdateMeasurementSheet when editing an existing measurement
            .sheet(item: $editMeasurement) { measurement in
                UpdateMeasurementSheet(measurement: measurement)
            }
            // Add toolbar with a "+" button when there are measurements in the list
            .toolbar {
                if !measurements.isEmpty {
                    Button("Add Entry", systemImage: "plus") {
                        // Show the sheet to add a new measurement
                        isShowingMeasurementSheet = true
                    }
                }
            }
            // Overlay a message and button when the measurement list is empty
            .overlay {
                if measurements.isEmpty {
                    ContentUnavailableView(
                        label: {
                            // Display a label with an icon when no entries are present
                            Label("No Entries", systemImage: "cross.circle.fill")
                        },
                        description: {
                            // Provide a description encouraging the user to add an entry
                            Text("Start adding entries to view your measurement history.")
                        },
                        actions: {
                            // Button to show the AddMeasurementSheet
                            Button("Add Entry") {
                                isShowingMeasurementSheet = true
                            }
                        }
                    )
                    .offset(y: -60) // Adjust position of the overlay
                }
            }
        }
    }
}


// This is the view that shows previously logged measurements
struct HealthLog: View {
    // Reference a measurement stored in the Measurements database
    let measurement: Measurements
    
    var body: some View {
        // Align measurement name, date/time
        HStack {
            Text(measurement.measurementName)
            Text(measurement.measurementData)
            Spacer()
            Text(measurement.date, format: .dateTime.month(.abbreviated).day().hour(.defaultDigits(amPM: .abbreviated)).minute())
                .frame(width: 70, alignment: .leading)
            Spacer()
        }
        .padding()
        .cornerRadius(10)
    }
}

// This is the view that is shows when '+' is tapped that allows user to add a new measurement
struct AddMeasurementSheet: View {
    // SwiftData container
    @Environment(\.modelContext) var context
    // Allow user to leave the add measurement sheet view and return to health log view
    @Environment(\.dismiss) private var dismiss
    // This is the add measurement sheet view which is initialized to false and changes to true when '+' is tapped
    @State private var isShowingMeasurementSheet = false
    // Date associated with measurement entry
    @State private var date: Date = .now
    // Measurement name associated with entry
    @State private var measurementName: String = "None"
    // Declare and initialize picker for measurement name (safe coding practice: never leave array unanitialized)
    let measurementSelection = ["None", "Blood Pressure", "Heart Rate", "Temperature", "Blood Glucose", "Weight", "Oxygen Saturation"]
    // Holds data entered by user for selected measurement
    @State private var measurementData: String = ""
    // Variable to store a note associated with measurement entry
    @State private var note: String = ""
    
    var body: some View {
        NavigationStack {
            Form {
                // Select date associated with measurement entry
                DatePicker("Date", selection: $date, displayedComponents: [.date, .hourAndMinute])
                // Select name of measurement
                Picker("Measurement", selection: $measurementName) {
                    ForEach(measurementSelection, id: \.self) {
                        Text($0)
                    }
                }
                //Customize text field based on which measurement name is picked by user
                switch measurementName {
                case "Blood Pressure":
                    TextField("BP:", text: $measurementData)
                case "Heart Rate":
                    TextField("HR:", text: $measurementData)
                case "Temperature":
                    TextField("Temp:", text: $measurementData)
                case "Blood Glucose":
                    TextField("BG:", text: $measurementData)
                case "Weight":
                    TextField("Weight:", text: $measurementData)
                case "Oxygen Saturation":
                    TextField("Oxygen Sat:", text: $measurementData)
                default:
                    TextField("None", text: $measurementData)
                }
                //Add a note to entry
                TextField("Note", text: $note)
                    // Title of add measurement sheet view
                    .navigationBarTitle("Add Entry", displayMode: .inline)
                    .toolbar {
                        ToolbarItemGroup(placement: .topBarLeading) {
                            // Cancel and return to health log view
                            Button("Cancel") {
                                dismiss()
                            }
                        }
                        ToolbarItemGroup(placement: .topBarTrailing) {
                            // Save measurement into database and return to health view
                            Button("Save") {
                                let measurement = Measurements(measurementName: measurementName, measurementData: measurementData, date: date, note: note)
                                
                                context.insert(measurement) //Insert new measurement into SwiftData container
                                dismiss() //Dismiss new measurement sheet
                                
                            }
                        }
                    }
            }
        }
    }
}
    
// This is the update view that appears when user taps on measurement entry in health log view
struct UpdateMeasurementSheet: View {
    // SwiftData container
    @Environment(\.modelContext) var context
    // Allow user to leave the add measurement sheet view and return to health log view
    @Environment(\.dismiss) private var dismiss
    // Reference and edit a measurement stored in the Measurements database
    @Bindable var measurement: Measurements
    // Declare and initialize picker for measurement name (safe coding practice: never leave array unanitialized)
    let measurementSelection = ["None", "Blood Pressure", "Heart Rate", "Temperature", "Blood Glucose", "Weight", "Oxygen Saturation"]
        
    var body: some View {
        NavigationStack {
            Form {
                // Select date associated with measurement entry
                DatePicker("Date", selection: $measurement.date, displayedComponents: [.date, .hourAndMinute])
                // Select name of measurement
                Picker("Measurement", selection: $measurement.measurementName) {
                    ForEach(measurementSelection, id: \.self) {
                        Text($0)
                    }
                }
                //Customize text field based on which measurement name is picked by user
                switch measurement.measurementName {
                case "Blood Pressure":
                    TextField("BP:", text: $measurement.measurementData)
                case "Heart Rate":
                    TextField("HR:", text: $measurement.measurementData)
                case "Temperature":
                    TextField("Temp:", text: $measurement.measurementData)
                case "Blood Glucose":
                    TextField("BG:", text: $measurement.measurementData)
                case "Weight":
                    TextField("Weight:", text: $measurement.measurementData)
                case "Oxygen Saturation":
                    TextField("Oxygen Sat:", text: $measurement.measurementData)
                default:
                    TextField("None", text: $measurement.measurementData)
                }
                //Add a note to entry
                TextField("Note", text: $measurement.note)
                // Title of update measurement sheet view
                    .navigationTitle("Update Entry")
                    .navigationBarTitleDisplayMode(.large)
                    .toolbar {
                        ToolbarItemGroup(placement: .topBarTrailing) {
                            // Save updated measurement to Measurements database and return to health log view
                            Button("Save") {
                                dismiss() //Dismiss update measurement sheet
                            }
                        }
                    }
            }
        }
    }
}
            
        
    
