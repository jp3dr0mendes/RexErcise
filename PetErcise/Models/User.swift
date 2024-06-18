//
//  User.swift
//  SwiftDataTest
//
//  Created by João Pedro Albuquerque on 13/06/24.
//

import Foundation
import SwiftData

@Model
class User{
    var name: String
    var idade: Int
    var peso: Int
    private var coins: Int
    
    init(name: String, idade: Int, peso: Int) {
        self.name = name
        self.idade = idade
        self.peso = peso
        self.coins = 0
    }
}

