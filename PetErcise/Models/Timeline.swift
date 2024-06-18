//
//  Timeline.swift
//  SwiftDataTest
//
//  Created by João Pedro Albuquerque on 13/06/24.
//

import Foundation
import SwiftData

@Model
class Timeline{
    var date: Date
    var bpm: Int
    var steps: Int
    var kcal: Int
    var dairy: String
    private var checkIn: Bool
    
    init(date: Date, bpm: Int, steps: Int, kcal: Int, dairy: String, checkIn: Bool) {
        self.date = date
        self.bpm = bpm
        self.steps = steps
        self.kcal = kcal
        self.dairy = dairy
        self.checkIn = checkIn
    }
}

