//
//  ContentView.swift
//  Live Better
//
//  Created by Jessica Taylor on 1/26/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State private var selectedTab = "Symptoms"
    // SwiftData container
    @Environment(\.modelContext) var context
    @Query(sort: \Symptoms.date, order: .reverse) var symptoms: [Symptoms]
    @State private var isShowingSymptomSheet = false
    @State private var editSymptom: Symptoms?
    
    var body: some View {
        TabView(selection: $selectedTab) {
            //Symptom Log View
            List {
                ForEach(symptoms) { symptom in
                    SymptomLog(symptom: symptom)
                        .onTapGesture {
                            editSymptom = symptom
                        }
                        .navigationTitle("Symptoms")
                }
                .onDelete { indexSet in
                    for index in indexSet {
                        context.delete(symptoms[index])
                    }
                }
            }
            .sheet(isPresented: $isShowingSymptomSheet) { AddSymptomSheet() }
            .sheet(item: $editSymptom) { symptom in
                UpdateSymptomSheet(symptom: symptom)
            }
            .toolbar {
                if !symptoms.isEmpty {
                    Button("Add Symptom", systemImage: "plus") {
                        isShowingSymptomSheet = true
                    }
                }
            }
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
            .tabItem {
                Label("Symptoms", systemImage: "cross.circle.fill")
            }
            .tag("symptomLog")
            
            Text("Health Measurements")
                .tabItem {
                    Label("Health Measurements", systemImage: "heart.circle.fill")
                }
                .tag("healthMeasurements")
            
            Text("Medications")
                .tabItem {
                    Label("Medications", systemImage: "pills.circle.fill")
                }
                .tag("medications")
            
            Text("Settings")
                .tabItem {
                    Label("Settings", systemImage: "gearshape.fill")
                }
                .tag("settings")
        }
    }
}

    
    
    //#Preview {
    //    ContentView()
    //}
    
    
    struct SymptomLog: View {
        let symptom: Symptoms
        
        var body: some View {
            HStack {
                Text(symptom.symptomName)
                    .font(.headline)
                Spacer()
                Text(symptom.date, format: .dateTime.month(.abbreviated).day())
                    .frame(width: 70, alignment: .leading)
                Spacer()
                Text(symptom.symptomSeverity)
                    .foregroundColor(getSeverityColor(severity: symptom.symptomSeverity)) //color of text of symptom severity
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
    
    struct AddSymptomSheet: View {
        // SwiftData container
        @Environment(\.modelContext) var context
        // Allow user to leave symptom entry view and go back
        @Environment(\.dismiss) private var dismiss
        
        @State private var date: Date = .now
        @State private var symptomName: String = ""
        @State private var timeOfDay: String = "None"
        let timeOfDaySelection = ["None", "Morning", "Afternoon", "Evening", "Night"]
        @State private var symptomSeverity: String = "None"
        let severityRatings = ["None", "Mild", "Moderate", "Severe", "Unbearable"]
        @State private var relievingFactors: String = ""
        @State private var aggravatingFactors: String = ""
        @State private var note: String = ""
        
        var body: some View {
            NavigationStack {
                Form {
                    DatePicker("Date", selection: $date, displayedComponents: .date)
                    TextField("Symptom Name", text: $symptomName) // add name of symptom or identifying factor
                    // select time of day symptom occurs from pre programmed options (none, morning, afternoon, evening, night)
                    Picker("Time of Day", selection: $timeOfDay) {
                        ForEach(timeOfDaySelection, id: \.self) {
                            Text($0)
                        }
                    }
                    // select symptom severity from pre programmed options (none, mild, moderate, severe, unbearable)
                    Picker("Symptom Severity", selection: $symptomSeverity) {
                        ForEach(severityRatings, id: \.self) {
                            Text($0)
                        }
                    }
                    TextField("Relieving Factors", text: $relievingFactors) //add relieving factors to symptom entry
                    TextField("Aggravating Factors", text: $aggravatingFactors) //add aggravating factors to symptom entry
                    TextField("Note", text: $note) //add a note to symptom entry
                }
                .navigationTitle("New Symptom")
                .navigationBarTitleDisplayMode(.large)
                .toolbar {
                    ToolbarItemGroup(placement: .topBarLeading) {
                        Button("Cancel") {
                            dismiss()
                        }
                    }
                    ToolbarItemGroup(placement: .topBarTrailing) {
                        Button("Save") {
                            let symptom = Symptoms(date: date, symptomName: symptomName, timeOfDay: timeOfDay, symptomSeverity: symptomSeverity, relievingFactors: relievingFactors, aggravatingFactors: aggravatingFactors, note: note)
                            
                            context.insert(symptom) //insert new symptom into SwiftData container
                            dismiss() //dismiss new symptom sheet
                            
                        }
                    }
                }
            }
        }
        
    }
    
    struct UpdateSymptomSheet: View {
        // SwiftData container
        @Environment(\.modelContext) var context
        // Allow user to leave symptom entry view and go back
        @Environment(\.dismiss) private var dismiss
        @Bindable var symptom: Symptoms
        let timeOfDaySelection = ["None", "Morning", "Afternoon", "Evening", "Night"]
        let severityRatings = ["None", "Mild", "Moderate", "Severe", "Unbearable"]
        
        
        var body: some View {
            NavigationStack {
                Form {
                    DatePicker("Date", selection: $symptom.date, displayedComponents: .date)
                    TextField("Symptom Name", text: $symptom.symptomName) // add name of symptom or identifying factor
                    // select time of day symptom occurs from pre programmed options (none, morning, afternoon, evening, night)
                    Picker("Time of Day", selection: $symptom.timeOfDay) {
                        ForEach(timeOfDaySelection, id: \.self) {
                            Text($0)
                        }
                    }
                    // select symptom severity from pre programmed options (none, mild, moderate, severe, unbearable)
                    Picker("Symptom Severity", selection: $symptom.symptomSeverity) {
                        ForEach(severityRatings, id: \.self) {
                            Text($0)
                        }
                    }
                    TextField("Relieving Factors", text: $symptom.relievingFactors) //add relieving factors to symptom entry
                    TextField("Aggravating Factors", text: $symptom.aggravatingFactors) //add aggravating factors to symptom entry
                    TextField("Note", text: $symptom.note) //add a note to symptom entry
                }
                .navigationTitle("Update Symptom")
                .navigationBarTitleDisplayMode(.large)
                .toolbar {
                    ToolbarItemGroup(placement: .topBarTrailing) {
                        Button("Save") {
                            dismiss() //dismiss update symptom sheet
                        }
                    }
                }
            }
        }
    }


        
    

