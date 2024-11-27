//
//  SymptomsView.swift
//  Live Better
//
//  Created by Jessica Taylor on 2/20/24.
//

import Foundation
import SwiftUI
import SwiftData

struct SymptomsView: View {
    // Access the environment's model context to interact with the data store
    @Environment(\.modelContext) var context
    
    // Query to fetch symptoms from the data store, sorted by date in reverse order (most recent first)
    @Query(sort: \Symptoms.date, order: .reverse) var symptoms: [Symptoms]
    
    // State variable to control the visibility of the sheet for adding a new symptom
    @State private var isShowingSymptomSheet = false
    
    // State variable to hold the symptom being edited (used for updating existing entries)
    @State private var editSymptom: Symptoms?
    
    var body: some View {
        NavigationStack {
            // Display a list of logged symptoms
            List {
                // Loop through the list of symptoms and display each one
                ForEach(symptoms) { symptom in
                    // Each symptom is a NavigationLink to the update view for that specific symptom
                    NavigationLink(destination: UpdateSymptomSheet(symptom: symptom)) {
                        // Custom view to display symptom details
                        SymptomLog(symptom: symptom)
                    }
                    .buttonStyle(PlainButtonStyle()) // Makes the link look like a standard list item
                }
                // Enable deletion of symptoms from the list
                .onDelete { indexSet in
                    for index in indexSet {
                        context.delete(symptoms[index]) // Remove symptom from the data store
                    }
                }
            }
            // Sheet to display the AddSymptomSheet when adding a new symptom
            .sheet(isPresented: $isShowingSymptomSheet) {
                AddSymptomSheet()
            }
            // Sheet to display the UpdateSymptomSheet when editing an existing symptom
            .sheet(item: $editSymptom) { symptom in
                UpdateSymptomSheet(symptom: symptom)
            }
            // Add toolbar with a "+" button when there are symptoms in the list
            .toolbar {
                if !symptoms.isEmpty {
                    Button("Add Symptom", systemImage: "plus") {
                        // Show the sheet to add a new symptom
                        isShowingSymptomSheet = true
                    }
                }
            }
            // Overlay a message and button when the symptom list is empty
            .overlay {
                if symptoms.isEmpty {
                    ContentUnavailableView(
                        label: {
                            // Display a label with an icon when no entries are present
                            Label("No Symptoms", systemImage: "cross.circle.fill")
                        },
                        description: {
                            // Provide a description encouraging the user to add an entry
                            Text("Start adding entries to view your symptom history.")
                        },
                        actions: {
                            // Button to show the AddSymptomSheet
                            Button("Add Symptom") {
                                isShowingSymptomSheet = true
                            }
                        }
                    )
                    .offset(y: -60) // Adjust position of the overlay
                }
            }
        }
    }
}

    
// This is the view that shows previously logged symptoms
struct SymptomLog: View {
    // Reference a symptom stored in the Symptoms database
    let symptom: Symptoms
    
    var body: some View {
        // Align symptom name, date, and symptom severity horizontally in cell
        HStack {
            Text(symptom.symptomName)
                .font(.headline)
            Spacer()
            Text(symptom.date, format: .dateTime.month(.abbreviated).day().hour(.defaultDigits(amPM: .abbreviated)).minute())
                .frame(width: 70, alignment: .leading)
            Spacer()
            Text(symptom.symptomSeverity)
            //color of text of symptom severity
                .foregroundColor(getSeverityColor(severity: symptom.symptomSeverity))
            Spacer()
        }
        .padding()
        //color of symptom entry background based on symptom severity
        .background(getSeverityColor(severity: symptom.symptomSeverity).opacity(0.1))
        .cornerRadius(10)
        }
    
    //Get Color of symptom block in symptom history (green, yellow, orange, red, black) based on symptom severity
    func getSeverityColor(severity: String) -> Color {
        if severity == "Mild" {
            return .green
        } else if severity == "Moderate" {
            return .yellow
        } else if severity == "Severe" {
            return .orange
        } else if severity == "Unbearable" {
            return .red
        }
        else {
            return .white
        }
    }
}
 
// This is the view that is shows when '+' is tapped that allows user to add a new symptom
struct AddSymptomSheet: View {
    // SwiftData container
    @Environment(\.modelContext) var context
    // Allow user to leave the add symptom sheet view and return to symptom log view
    @Environment(\.dismiss) private var dismiss
    // Date associated with symptom entry
    @State private var date: Date = .now
    // Symptom name associated with symptom entry
    @State private var symptomName: String = ""
    // Symptom severity of symptom
    @State private var symptomSeverity: String = "None"
    // Declare and initialize picker for symptom severity (safe coding practice: never leave array unanitialized)
    let severityRatings = ["None", "Mild", "Moderate", "Severe", "Unbearable"]
    // Variable to store string input of factors that relieve symptoms
    @State private var relievingFactors: String = ""
    // Variable to store string input of factors that aggravate symptoms
    @State private var aggravatingFactors: String = ""
    // Variable to store a note associated with symptom entry
    @State private var note: String = ""
    
    var body: some View {
        NavigationStack {
            Form {
                // Select date associated with symptom entry
                DatePicker("Date", selection: $date, displayedComponents: [.date, .hourAndMinute])
                // Add name of symptom or identifying factor
                TextField("Symptom Name", text: $symptomName)
                // Select symptom severity
                Picker("Symptom Severity", selection: $symptomSeverity) {
                    ForEach(severityRatings, id: \.self) {
                        Text($0)
                    }
                }
                //Add a note to symptom entry
                TextField("Note", text: $note)
            }
            // Title of add symptom sheet view
            .navigationTitle("New Symptom")
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItemGroup(placement: .topBarLeading) {
                    // Cancel and return to symptom log view
                    Button("Cancel") {
                        dismiss()
                    }
                }
                ToolbarItemGroup(placement: .topBarTrailing) {
                    // Save symptom into database and return to symptom log view
                    Button("Save") {
                        let symptom = Symptoms(date: date, symptomName: symptomName, symptomSeverity: symptomSeverity, note: note)
                        
                        context.insert(symptom) //Insert new symptom into SwiftData container
                        dismiss() //Dismiss new symptom sheet
                        
                    }
                }
            }
        }
    }
    
}
 
// This is the update view that appears when user taps on symptom entry in symptom log view
struct UpdateSymptomSheet: View {
    // SwiftData container
    @Environment(\.modelContext) var context
    // Allow user to leave the update symptom sheet view and return to symptom log view
    @Environment(\.dismiss) private var dismiss
    // Reference and edit a symptom stored in the Symptoms database
    @Bindable var symptom: Symptoms
    // Declare and initialize picker for symptom severity (safe coding practice: never leave array unanitialized)
    let severityRatings = ["None", "Mild", "Moderate", "Severe", "Unbearable"]
    
    
    var body: some View {
        NavigationStack {
            Form {
                // Select date associated with symptom entry
                DatePicker("Date", selection: $symptom.date, displayedComponents: [.date, .hourAndMinute])
                // Add name of symptom or identifying factor
                TextField("Symptom Name", text: $symptom.symptomName)
                // Select symptom severity
                Picker("Symptom Severity", selection: $symptom.symptomSeverity) {
                    ForEach(severityRatings, id: \.self) {
                        Text($0)
                    }
                }
                TextField("Note", text: $symptom.note) //Add a note to symptom entry
            }
            // Title of update symptom sheet view
            .navigationTitle("Update Symptom")
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItemGroup(placement: .topBarTrailing) {
                    // Save updated symptom to symptoms database and return to symptom log view
                    Button("Save") {
                        dismiss() //Dismiss update symptom sheet
                    }
                }
            }
        }
    }
}


        
    
