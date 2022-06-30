//
//  Decoder_json.swift
//  ParsingJSON
//
//  Created by Albert on 9.06.2022.
//

import Foundation



func decodeNames( completionHandler: @escaping  ( Array<String>) -> Void )
{
    var arr : Array<String> = []
    var arr2 : Array<String> = []
    var names : Array<String> = []
    let prefix = "Booker_Test.dbo."
    
    req(reqest: "select ID, Name from \(prefix)Shops")
    {
        json, error in
        for i in 0...(json!.count-1)
        {
            arr.append((json![i]["ID"]! as? String)!)
        }
        for i in 0...(json!.count-1)
        {
            arr2.append((json![i]["Name"]! as? String)!)
        }
            for i in 0...(json!.count-1)
            {
                names.append("ID: " + (arr[i]) + "    Точка: " + (arr2[i]))
            }
       
        completionHandler(names)
        
       
    }
}


let jsonData = JSON.data(using: .utf8)!
let decoder = JSONDecoder()
let my_list = try! decoder.decode([BlogPost].self, from: jsonData)


