//
//  Measurements.swift
//  Live Better
//
//  Created by Jessica Taylor on 6/25/24.
//

import Foundation
import SwiftData

@Model
class Measurements {
    var measurementName: String // Name of measurement
    var measurementData: String // Measurement input
    var date: Date // Date of measurement entry
    var note: String // Note created by user
    
    init(measurementName: String, measurementData: String, date: Date = .now, note: String) {
        self.measurementName = measurementName
        self.measurementData = measurementData
        self.date = date
        self.note = note
    }
    
    
}


