//
//  locatin.swift
//  firstapp
//
//  Created by mac on 31/01/2021.
//

import Foundation

struct location: Decodable, Identifiable {
    let id: Int
    let name: String
    let country: String
    let description: String
    let more: String
    let latitude: Double
    let longitude: Double
    let heroPicture: String
    let advisory: String
    
    static let example = location(id: 1, name: "Great smokey Mountains", country: "United States", description: "A great place to visit", more: "More text here", latitude: 5.5652446, longitude: -0.1806131, heroPicture: "jefferson", advisory: "Beware of bears!")
    
}
