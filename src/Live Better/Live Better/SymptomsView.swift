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
    // SwiftData container
    @Environment(\.modelContext) var context
    // Query Symptoms database and sort symptom log by date (most recent on top)
    @Query(sort: \Symptoms.date, order: .reverse) var symptoms: [Symptoms]
    // This is the add symptom sheet view which is initialized to false and changes to true when '+' is tapped
    @State private var isShowingSymptomSheet = false
    // Makes symptom entries editable
    @State private var editSymptom: Symptoms?
    
    var body: some View {
        //Symptom Log View
        List {
            // Lists symptom entries and allows entries to be edited when cell is tapped
            ForEach(symptoms) { symptom in
                SymptomLog(symptom: symptom)
                    .onTapGesture {
                        editSymptom = symptom
                    }
            }
            // Allows symptom entries to be deleted when user swipes left
            .onDelete { indexSet in
                for index in indexSet {
                    context.delete(symptoms[index])
                }
            }
        }
        // User is viewing symptom log view and user can add new symptom
        .sheet(isPresented: $isShowingSymptomSheet) { AddSymptomSheet() }
        // Allow user to update symptom in symptom log view
        .sheet(item: $editSymptom) { symptom in
            UpdateSymptomSheet(symptom: symptom)
        }
        // If user is viewing the symptom log view, then add button in toolbar which shows the add symptom sheet view when tapped
        .toolbar {
            if !symptoms.isEmpty {
                Button("Add Symptom", systemImage: "plus") {
                    isShowingSymptomSheet = true
                }
            }
        }
        // If there are no logged symptoms to view, show user an initital sheet that prompts them to start adding symptoms
        .overlay {
            if symptoms.isEmpty {
                ContentUnavailableView(label: {
                    Label("No Symptoms", systemImage: "cross.circle.fill")
                }, description: {
                    Text("Start adding symptoms to see your list.")
                }, actions: {
                    Button("Add Symptom") { isShowingSymptomSheet = true }
                })
                .offset(y: -60)
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
            Text(symptom.date, format: .dateTime.month(.abbreviated).day())
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
            return .black
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
    // Time of day of symptom occurance
    @State private var timeOfDay: String = "None"
    // Declare and initialize picker for time of day of symptom occurance (safe coding practice: never leave array unanitialized)
    let timeOfDaySelection = ["None", "Morning", "Afternoon", "Evening", "Night"]
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
                DatePicker("Date", selection: $date, displayedComponents: .date)
                // Add name of symptom or identifying factor
                TextField("Symptom Name", text: $symptomName)
                // Select time of day that symptom occurs
                Picker("Time of Day", selection: $timeOfDay) {
                    ForEach(timeOfDaySelection, id: \.self) {
                        Text($0)
                    }
                }
                // Select symptom severity
                Picker("Symptom Severity", selection: $symptomSeverity) {
                    ForEach(severityRatings, id: \.self) {
                        Text($0)
                    }
                }
                //Add relieving factors to symptom entry
                TextField("Relieving Factors", text: $relievingFactors)
                //Add aggravating factors to symptom entry
                TextField("Aggravating Factors", text: $aggravatingFactors)
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
                        let symptom = Symptoms(date: date, symptomName: symptomName, timeOfDay: timeOfDay, symptomSeverity: symptomSeverity, relievingFactors: relievingFactors, aggravatingFactors: aggravatingFactors, note: note)
                        
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
    // Declare and initialize picker for time of day of symptom occurance (safe coding practice: never leave array unanitialized)
    let timeOfDaySelection = ["None", "Morning", "Afternoon", "Evening", "Night"]
    // Declare and initialize picker for symptom severity (safe coding practice: never leave array unanitialized)
    let severityRatings = ["None", "Mild", "Moderate", "Severe", "Unbearable"]
    
    
    var body: some View {
        NavigationStack {
            Form {
                // Select date associated with symptom entry
                DatePicker("Date", selection: $symptom.date, displayedComponents: .date)
                // Add name of symptom or identifying factor
                TextField("Symptom Name", text: $symptom.symptomName)
                // Select time of day of symptom occurance
                Picker("Time of Day", selection: $symptom.timeOfDay) {
                    ForEach(timeOfDaySelection, id: \.self) {
                        Text($0)
                    }
                }
                // Select symptom severity
                Picker("Symptom Severity", selection: $symptom.symptomSeverity) {
                    ForEach(severityRatings, id: \.self) {
                        Text($0)
                    }
                }
                TextField("Relieving Factors", text: $symptom.relievingFactors) //Add relieving factors to symptom entry
                TextField("Aggravating Factors", text: $symptom.aggravatingFactors) //Add aggravating factors to symptom entry
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


        
    


