//
//  Item.swift
//  SwiftDataTest
//
//  Created by João Pedro Albuquerque on 13/06/24.
//

import Foundation
import SwiftData

@Model
class Item{
    var id: Int
    var nome: String
    var price: Int
    var purchased: Bool
    
    init(id: Int, nome: String, price: Int) {
        self.id = id
        self.nome = nome
        self.price = price
        self.purchased = false
    }
    
}

