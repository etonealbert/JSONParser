//
//  Almofire.swift
//  ParsingJSON
//
//  Created by Albert on 20.06.2022.
//

import Foundation
import UIKit
import Alamofire


func repetition() -> String
{
    request("http://jsonplaceholder.typicode.com/posts").responseJSON { response in
               print(response)
}

