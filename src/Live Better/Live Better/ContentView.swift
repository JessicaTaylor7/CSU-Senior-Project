//
//  ContentView.swift
//  Live Better
//
//  Created by Jessica Taylor on 1/26/24.
//

import SwiftUI
import SwiftData
import LocalAuthentication

struct ContentView: View {
    // Variable for the tab selected by user. Default is set to Symptoms
    // @State is a property wrapper that allows variable to be modified
    @State private var selectedTab = "Symptoms"
    
    
    var body: some View {
        // Login view
//        NavigationView {
//            LoginView()
//        }
        
        // Symptoms tab view
        TabView(selection: $selectedTab) {
            NavigationStack {
                // Contains views for the Symptoms tab view
                SymptomsView()
                    // Title of Symptoms tab view
                    .navigationTitle("Symptoms")
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

    
    
    
