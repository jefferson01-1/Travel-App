//
//  tip.swift
//  firstapp
//
//  Created by mac on 06/02/2021.
//

import Foundation

struct Tip: Decodable {
    let text: String
    let children: [Tip]?
}
