//
//  Symptoms.swift
//  Live Better
//
//  Created by Jesse Taylor on 1/26/24.
//

import Foundation
import SwiftData

@Model
class Symptoms {
    
    var date: Date //date of symptom entry
    var symptomName: String //name of symptom
    var timeOfDay: String //time of day symptom occurs
    var symptomSeverity: String //select severity of symptom
    var relievingFactors: String //add any factors that improve symptom
    var aggravatingFactors: String //add any factors that worsen symptom
    var note: String //add note to symptom entry
    
    init(date: Date = .now, symptomName: String, timeOfDay: String, symptomSeverity: String, relievingFactors: String, aggravatingFactors: String, note: String) {
        self.date = date
        self.symptomName = symptomName
        self.timeOfDay = timeOfDay
        self.symptomSeverity = symptomSeverity
        self.relievingFactors = relievingFactors
        self.aggravatingFactors = aggravatingFactors
        self.note = note
    }
    
    
}
