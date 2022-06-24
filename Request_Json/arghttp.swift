
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


   return(to_base64(hex2ascii(hex: result)))
}




func req(reqest: String) -> String {
    let usr = encode_to_base64(HTTP_SERVER_LOGIN)
    let pwd = encode_to_base64(HTTP_SERVER_PWD)
    let srv =  HTTP_SERVER_IP + ":" + String(HTTP_SERVER_PORT)
    
    let url = "http://\(srv)/json/\(encode_to_base64(reqest))/"
    
    let authorization_token = ((usr + ":" + pwd).data(using: .windowsCP1250)?.base64EncodedString())!
    print("encodet = \(authorization_token)")
    let header: HTTPHeaders = [ "Authorization": "Basic \(authorization_token)"]

    request( url, method: .get, encoding: JSONEncoding.default, headers: header)
        .responseJSON { response in
            print(response)
    }
   
        return "Wait request answer:"

}

    


