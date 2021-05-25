//
//  Tip.swift
//  cityscapes
//
//  Created by Ketul Adesara on 25/05/21.
//

import Foundation

struct Tip: Decodable {
    let text: String
    let children: [Tip]?
}
