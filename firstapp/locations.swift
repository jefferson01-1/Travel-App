//
//  locations.swift
//  firstapp
//
//  Created by mac on 31/01/2021.
//

import Foundation

class locations: ObservableObject {
    var places: [location] = []
    
    var primary: location {
        places[0]
    }
    
    
    init() {
        let url = Bundle.main.url(forResource: "locations", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        places = try! JSONDecoder().decode([location].self, from: data)
    }
}
