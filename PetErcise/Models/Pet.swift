//
//  Pet.swift
//  SwiftDataTest
//
//  Created by João Pedro Albuquerque on 13/06/24.
//

import Foundation
import SwiftData

@Model
class Pet{
    var nome: String
    var evolution: Int
    var itens: [Item]
    private var level: Int
    private var xp: Int
    
    init(nome: String) {
        self.nome = nome
        self.evolution = 0
        self.itens = []
        self.level = 1
        self.xp = 0
    }
}

