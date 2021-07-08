//
//  Pokemon.swift
//  Pokedex
//
//  Created by Farrel Anshary on 04/07/21.
//

import Foundation

struct Pokemon: Decodable, Identifiable {
    let id: Int
    let name: String
    let imageUrl: String
    let type: String
    let description: String
    let weight: Int
    let height: Int
    let attack: Int
    let defense: Int
}

let MOCK_POKEMON: [Pokemon] = [
    .init(id: 0, name: "Bulbasaur", imageUrl: "1", type: "poison", description: "Asdasd", weight: 500, height: 500, attack: 82, defense: 85),
    .init(id: 1, name: "Ivysaur", imageUrl: "1", type: "flying", description: "Qwerty", weight: 200, height: 200, attack: 100, defense: 72)
]
