//
//  Decoder_json.swift
//  ParsingJSON
//
//  Created by Albert on 9.06.2022.
//

import Foundation



let jsonData = JSON.data(using: .utf8)!
let decoder = JSONDecoder()
let my_list = try! decoder.decode([BlogPost].self, from: jsonData)


