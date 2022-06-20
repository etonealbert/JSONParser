
import Foundation
import Alamofire




func UnicConvert(str: Character) -> Int {
    
    var unit: Int = 0
    
    for codeUnit in str.utf8{
        unit = Int(codeUnit)
        break
    
    }
    //print("")
    return unit
}

func hex2ascii(hex: String) -> String {
    var text = ""
    let chars = Array(hex)
    _ = stride(from: 0, to: chars.count, by: 2).map() {
      let twoChars = String(chars[$0 ..< min($0 + 2, chars.count)])
      text.append(String(describing: UnicodeScalar(Int(twoChars, radix: 16)!)!))
    }

    return String(text);
}


func to_base64(_ ascii: String) -> String {

    let base64Encoded = ascii.data(using: .windowsCP1252)?.base64EncodedString(options: Data.Base64EncodingOptions(rawValue: 0))
    if (base64Encoded == nil) {
        return "Error"
    }
    return base64Encoded!
        .replacingOccurrences(of: "+", with: "-")
        .replacingOccurrences(of: "/", with: "_")
}
    


func encode_to_base64(_ value: String) ->String {
    let password = Array("1j6C#$eO|uhE~DBu")
    let array_value = Array(value)
    var index = 0
    var result = ""
    
    
    var hex_value: String
    var dec_my_value, element_pass: Int
    for i in 0...(value.count-1)
    {
        
        
        element_pass = UnicConvert(str: (password[index % password.count]))
        dec_my_value = ((255 + UnicConvert(str: array_value[i]) - element_pass)%255 + 1)
        hex_value = String(dec_my_value,radix: 16)
        if hex_value.count < 2
        {
            result = result + "0" + hex_value
        }else{
        result = result + hex_value
        }
        index += 1
        
         }

//    print("hex = " + result)
//    print("ascii = " + hex2ascii(hex: result))
//    print("final = " + to_base64(hex2ascii(hex: result)))
   return(to_base64(hex2ascii(hex: result)))
}


func req(reqest: String) -> String
{
    let usr = encode_to_base64(HTTP_SERVER_LOGIN)
    let pwd = encode_to_base64(HTTP_SERVER_PWD)
    let srv =  HTTP_SERVER_IP + ":" + String(HTTP_SERVER_PORT)
    
    let hashed_request = encode_to_base64(reqest)
    
    let url =  "http://" + srv + "/json/" + hashed_request + "/"
    let loginString = String(format: "%@:%@", usr, pwd)
    
    
    request( url, method: .get).responseJSON { response in
        print(response)
    }
    
    
    //request_my.httpMethod = "b'" + request + "'"
//    request_my.addValue("Basic \(loginString)", forHTTPHeaderField: "Authorization")
////    print("b'" + request + "'" )
//    let task = URLSession.shared.dataTask(with: request_my) { (data, response, error) in
//
//        // Check if Error took place
//        if let error = error {
//            print("Error took place \(error)")
//            return
//        }
//
//        // Read HTTP Response Status code
//        if let response = response as? HTTPURLResponse {
//            print("Response HTTP Status code: \(response.statusCode)")
//        }
//
//        // Convert HTTP Response Data to a simple String
//        if let data = data, let dataString = String(data: data, encoding: .utf8) {
//            print("Response data string:\n \(dataString)")
//        }
//
//    }
//
//    task.resume()

    return "end"

    }
    
//    ______________________ Decodable ____________________________
    
//    struct Book: Decodable {
//
//        // MARK: - Properties
//
//        let ID: String
//        let Names: String
//
//    }
//
////    let url = URL(string: "https://bit.ly/3sspdFO")!
//
//    var request = URLRequest(url: url)
//
//    request.setValue("application/json", forHTTPHeaderField: "Content-Type")
//
//
 


//func rep(request: String)

    
    //URLSession.shared.da

    
//        var host=HTTP_SERVER_IP,
//        var port=HTTP_SERVER_PORT,
//        var user=HTTP_SERVER_LOGIN,
//        var password=HTTP_SERVER_PWD,
//        var database="Booker_Test.dbo."
//    cursor=connection.cursor()
//
//    check_account_query= request
//    cursor.execute(check_account_query)
//    idSentCheck = cursor.fetchall()

   // return idSentCheck

    


