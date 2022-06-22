//
//  Almofire.swift
//  ParsingJSON
//
//  Created by Albert on 20.06.2022.
//

import Foundation
import UIKit
import Alamofire


func repetition() 
{
let headers: HTTPHeaders = ["Username": "admin", "Password": "laserjet4050n"]
    
    request("http://etonealbert.space/service.php", headers: headers)
        .authenticate(user: "admin", password: "laserjet4050n")
        .validate()
        .responseJSON { responseJSON in

        switch responseJSON.result {
        case .success(let value):
            print(value)
        case .failure(let error):
            print(error)
        }
    }
    
    request("http://etonealbert.space/service.php", encoding: JSONEncoding.default, headers: headers)
        .authenticate(user: "admin", password: "laserjet4050n")
        .responseJSON { response in
       
               print(response )
}
}

