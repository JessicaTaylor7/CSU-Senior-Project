//
//  LoggedMedications.swift
//  LiveBetter
//
//  Created by Jesse Taylor on 8/1/24.
//

import Foundation
import SwiftData

@Model
class Medications {
    
    var medName: String // Name of medication
    var amountTaken: String // Amount of medication taken
    var medType: String // Type of medication (pill, capsule, injection, infusion)
    var date: Date // Date of medication taken
    var medUnit: String // Unit of measurement for medication
    var note: String // Note created by user
    
    init(medicationName: String, amountTaken: String, medType: String, date: Date = .now, medUnit: String, note: String) {
        self.medName = medicationName
        self.amountTaken = amountTaken
        self.medType = medType
        self.date = date
        self.medUnit = medUnit
        self.note = note
    }
    
    
}
