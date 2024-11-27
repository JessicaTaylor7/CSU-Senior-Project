//
//  MedicationView.swift
//  LiveBetter
//
//  Created by Jesse Taylor on 7/29/24.
//

import Foundation
import SwiftUI
import SwiftData

struct MedicationView: View {
    // Access the environment's model context to interact with the data store
    @Environment(\.modelContext) var context
    
    // Query to fetch medications from the data store, sorted by date in reverse order (most recent first)
    @Query(sort: \Medications.date, order: .reverse) var medications: [Medications]
    
    // State variable to control the visibility of the sheet for adding a new medication
    @State private var isShowingMedicationSheet = false
    
    // State variable to hold the medication being edited (used for updating existing entries)
    @State private var editMedications: Medications?

    var body: some View {
        NavigationView {
            VStack {
                // List to display all medications
                List {
                    // Loop through the list of medications and display each one
                    ForEach(medications) { medication in
                        // Each medication is a NavigationLink to the update view for that specific medication
                        NavigationLink(destination: UpdateMedicationSheet(medication: medication)) {
                            // Custom view to display medication details
                            MedLog(medication: medication)
                        }
                        .buttonStyle(PlainButtonStyle()) // Makes the link look like a standard list item
                    }
                    // Enable deletion of medications from the list
                    .onDelete { indexSet in
                        for index in indexSet {
                            context.delete(medications[index]) // Remove medication from the data store
                        }
                    }
                }
                // Sheet to display the AddMedicationSheet when adding a new medication
                .sheet(isPresented: $isShowingMedicationSheet) {
                    AddMedicationSheet()
                }
                // Sheet to display the UpdateMedicationSheet when editing an existing medication
                .sheet(item: $editMedications) { medication in
                    UpdateMedicationSheet(medication: medication)
                }
                // Add toolbar with a "+" button when there are medications in the list
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        if !medications.isEmpty {
                            Button(action: {
                                // Show the sheet to add a new medication
                                isShowingMedicationSheet = true
                            }) {
                                Image(systemName: "plus") // "+" button icon
                            }
                        }
                    }
                }
                // Overlay a message and button when the medication list is empty
                .overlay {
                    if medications.isEmpty {
                        ContentUnavailableView(
                            label: {
                                // Display a label with an icon when no entries are present
                                Label("No Entries", systemImage: "cross.circle.fill")
                            },
                            description: {
                                // Provide a description encouraging the user to add an entry
                                Text("Start adding entries to view medication history.")
                            },
                            actions: {
                                // Button to show the AddMedicationSheet
                                Button("Add Entry") {
                                    isShowingMedicationSheet = true
                                }
                            }
                        )
                        .offset(y: -60) // Adjust position of the overlay
                    }
                }
            }
        }
    }
}


// This is the view that shows previously logged medications
struct MedLog: View {
    // Reference a medication stored in the Medications database
    let medication: Medications
    
    var body: some View {
        // Align medication name, amount taken, date/time
        HStack {
            Text(medication.medName)
            Text(medication.amountTaken)
            Text(medication.medUnit)
            Spacer()
            Text(medication.date, format: .dateTime.month(.abbreviated).day().hour(.defaultDigits(amPM: .abbreviated)).minute())
                .frame(width: 70, alignment: .leading)
            Spacer()
        }
        .padding()
        .cornerRadius(10)
    }
}

// This is the view that is shows when icon in top right corner is tapped that allows user to add a new medication
struct AddMedicationSheet: View {
    // SwiftData container
    @Environment(\.modelContext) var context
    // Allow user to leave the add medication sheet view and return to med log view
    @Environment(\.dismiss) private var dismiss
    
    // This is the add medication sheet view which is initialized to false and changes to true when icon in top right corner is tapped
    @State private var isShowingMedicationSheet = false
    // Date associated with medication entry
    @State private var date: Date = .now
    // Medication name associated with entry
    @State private var medName: String = ""
    // Holds type of medication selected by user
    @State private var medType: String = "None"
    // Declare and initialize picker for measurement type (safe coding practice: never leave array unanitialized)
    let medTypeSelection = ["None", "Tablet ", "Capsule", "Liquid", "Injection", "Infusion", "Topical Cream", "Inhaled Medication", "Patch"]
    // Holds amount of medication taken, entered by user
    @State private var amountTaken: String = ""
    // Variable to store a note associated with measurement entry
    @State private var note: String = ""
    // Variable to store unit of measurement for medication
    @State private var medUnit: String = "None"
    // Declare and initialize picker for unit of measurement for medication (safe coding practice: never leave array unanitialized)
    let medUnitSelection = ["None", "mL", "L", "gtt", "mg", "g", "mcg", "IU", "mEq", "u", "Puffs"]
    
    var body: some View {
        NavigationStack {
            Form {
                // Select date associated with medication entry
                DatePicker("Date", selection: $date, displayedComponents: [.date, .hourAndMinute])
                // Enter name of medication
                TextField("Name", text: $medName)
                // Select type of medication
                Picker("Medication Type", selection: $medType) {
                    ForEach(medTypeSelection, id: \.self) {
                        Text($0)
                    }
                }
                // Enter amount of medication taken
                TextField("Amount Taken", text: $amountTaken)
                // Select unit of measurement of amount taken
                Picker("Units of Measurement", selection: $medUnit) {
                    ForEach(medUnitSelection, id: \.self) {
                        Text($0)
                    }
                }
                //Add a note to entry
                TextField("Note", text: $note)
                // Title of add medication sheet view
                    .navigationTitle("Add Entry")
                    .navigationBarTitleDisplayMode(.large)
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbar {
                        ToolbarItemGroup(placement: .topBarLeading) {
                            // Save updated medication to Medications database and return to med log view
                            // Cancel and return to med log view
                            Button("Cancel") {
                                dismiss()
                            }
                        }
                    }
                    .toolbar {
                        ToolbarItemGroup(placement: .topBarTrailing) {
                            // Save medications into database and return to med view
                            Button("Save") {
                                let medication = Medications(medicationName: medName, amountTaken: amountTaken, medType: medType, date: date, medUnit: medUnit, note: note)
                                
                                context.insert(medication) //Insert new medication into SwiftData container
                                dismiss() //Dismiss new measurement sheet
                                
                            }
                        }
                    }
            }
        }
    }
}

// This is the update view that appears when user taps on medication entry in med log view
struct UpdateMedicationSheet: View {
    // SwiftData container
    @Environment(\.modelContext) var context
    // Allow user to leave the add medication sheet view and return to med log view
    @Environment(\.dismiss) private var dismiss
    // Reference and edit a medication stored in the Medications database
    @Bindable var medication: Medications
    // Declare and initialize picker for measurement type (safe coding practice: never leave array unanitialized)
    let medTypeSelection = ["None", "Tablet ", "Capsule", "Liquid", "Injection", "Infusion", "Topical Cream", "Inhaled Medication", "Patch"]
    // Declare and initialize picker for unit of measurement for medication (safe coding practice: never leave array unanitialized)
    let medUnitSelection = ["mL", "L", "gtt", "mg", "g", "mcg", "IU", "mEq", "u", "Puffs"]
    
    var body: some View {
        NavigationStack {
            Form {
                // Select date associated with medication entry
                DatePicker("Date", selection: $medication.date, displayedComponents: [.date, .hourAndMinute])
                // Enter name of medication
                TextField("Name", text: $medication.medName)
                // Select type of medication
                Picker("Medication Type", selection: $medication.medType) {
                    ForEach(medTypeSelection, id: \.self) {
                        Text($0)
                    }
                }
                // Enter amount of medication taken
                TextField("Amount Taken", text: $medication.amountTaken)
                // Select unit of measurement of amount taken
                Picker("Units of Measurement", selection: $medication.medUnit) {
                    ForEach(medUnitSelection, id: \.self) {
                        Text($0)
                    }
                }
                //Add a note to entry
                TextField("Note", text: $medication.note)
                // Title of update medication sheet view
                    .navigationTitle("Update Entry")
                    .navigationBarTitleDisplayMode(.large)
                    .toolbar {
                        ToolbarItemGroup(placement: .topBarTrailing) {
                            // Save updated medication to Medications database and return to med log view
                            Button("Save") {
                                dismiss() //Dismiss update medication sheet
                            }
                        }
                    }
            }
        }
    }
}

        
    

