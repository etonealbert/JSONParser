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
    request("http://etonealbert.space/service.php").responseJSON { response in
               print(response)
}
}

