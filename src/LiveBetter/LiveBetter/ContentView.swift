//
//  SymptomsView.swift
//  Live Better
//
//  Created by Jessica Taylor on 2/20/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    // State properties for handling login and input
    @State private var isLoggedIn = false // Tracks if the user is logged in
    @State private var username = "" // Stores the entered username
    @State private var password = "" // Stores the entered password
    @State private var errorMessage = "" // Stores any error message (e.g., invalid login)
    
    // State for managing the selected tab in the TabView
    @State private var selectedTab = "Symptoms"
    
    // Hardcoded values for username and password for simple login validation
    private let validUsername = "MyUsername123"
    private let validPassword = "Password123"
    
    var body: some View {
        // Conditionally show either the login screen or the main TabView based on login state
        if !isLoggedIn {
            loginView // Show the login view if not logged in
        } else {
            tabView // Show the main tab view if logged in
        }
    }
    
    // View that handles the login screen UI
    private var loginView: some View {
        ZStack {
            // Background image for the login screen
            Image("LoginBackground") // Ensure that "LoginBackground" is added to your assets
                .resizable() // Allow image to scale
                .scaledToFill() // Scale the image to fill the screen
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height) // Set the size of the background
                .clipped() // Ensure the image stays within the bounds of the frame
                .edgesIgnoringSafeArea(.all) // Extend the image beyond the safe area
            
            VStack {
                Spacer()
                
                // Title Text at the top of the login screen
                Text("Welcome to LiveBetter!")
                    .font(.largeTitle) // Large font size for the title
                    .fontWeight(.bold) // Bold font weight
                    .foregroundColor(.white) // White text color for contrast
                    .padding(.top, 50) // Add top padding to position the text
                
                // Username and Password Input Fields
                VStack(spacing: 15) {
                    // Username TextField with placeholder
                    TextField("Enter username", text: $username)
                        .padding() // Add padding inside the field
                        .background(Color.white.opacity(0.8)) // Slightly transparent white background
                        .cornerRadius(10) // Rounded corners for the input field
                        .shadow(radius: 5) // Apply shadow for a soft 3D effect
                        .autocapitalization(.none) // Disable auto-capitalization for username field
                    
                    // Password SecureField with placeholder
                    SecureField("Enter password", text: $password)
                        .padding() // Add padding inside the field
                        .background(Color.white.opacity(0.8)) // Slightly transparent white background
                        .cornerRadius(10) // Rounded corners for the input field
                        .shadow(radius: 5) // Apply shadow for a soft 3D effect
                    
                    // Display an error message if credentials are incorrect
                    if !errorMessage.isEmpty {
                        Text(errorMessage) // Show the error message
                            .foregroundColor(.red) // Red text for error
                            .padding(.top, 10) // Add top padding
                    }
                    
                    // Login Button
                    Button(action: login) { // Trigger the login action when tapped
                        Text("Login") // Button label
                            .fontWeight(.bold) // Bold text for emphasis
                            .frame(width: 200, height: 50) // Set a fixed size for the button
                            .background(Color.green) // Green background for the button
                            .foregroundColor(.white) // White text color
                            .cornerRadius(10) // Rounded corners for the button
                            .shadow(radius: 5) // Apply shadow for a soft 3D effect
                    }
                    .padding(.top, 20) // Add top padding for spacing
                }
                .padding(.horizontal, 30) // Add horizontal padding to input fields
                
                Spacer() // Space to push elements upwards
            }
        }
    }
    
    // View for the main app tabs when logged in
    private var tabView: some View {
        TabView(selection: $selectedTab) {
            
            // Symptoms Tab
            NavigationStack {
                SymptomsView() // View for Symptoms tab
                    .navigationTitle("Symptoms") // Set navigation title for this view
            }
            .tabItem {
                Label("Symptoms", systemImage: "cross.circle.fill") // Label for tab item with icon
            }
            .tag("symptomLog") // Tag to differentiate this tab
            
            // Health Tab
            NavigationStack {
                HealthView() // View for Health tab
                    .navigationTitle("Measurements") // Set navigation title for this view
            }
            .tabItem {
                Label("Health", systemImage: "heart.circle.fill") // Label for tab item with icon
            }
            .tag("health") // Tag for Health tab
            
            // Medications Tab
            NavigationStack {
                MedicationView() // View for Medications tab
                    .navigationTitle("Medications") // Set navigation title for this view
            }
            .tabItem {
                Label("Medications", systemImage: "pills.circle.fill") // Label for tab item with icon
            }
            .tag("medications") // Tag for Medications tab
        }
    }
    
    // Function to handle login logic
    private func login() {
        // Check if the entered username and password match the hardcoded values
        if username == validUsername && password == validPassword {
            isLoggedIn = true // Mark the user as logged in
            errorMessage = "" // Clear any error message
        } else {
            errorMessage = "Invalid username or password." // Display error message for incorrect credentials
        }
    }
}

#Preview {
    ContentView() // Preview for ContentView in Xcode
}



