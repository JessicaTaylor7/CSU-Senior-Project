//
//  Symptoms.swift
//  Live Better
//
//  Created by Jessica Taylor on 1/26/24.
//

import Foundation
import SwiftData

@Model
class Symptoms {
    
    var date: Date //date of symptom entry
    var symptomName: String //name of symptom
    var symptomSeverity: String //select severity of symptom
    var note: String //add note to symptom entry
    
    init(date: Date = .now, symptomName: String, symptomSeverity: String, note: String) {
        self.date = date
        self.symptomName = symptomName
        self.symptomSeverity = symptomSeverity
        self.note = note
    }
    
    
}
