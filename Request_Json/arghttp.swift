
import Foundation




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


func req(request: String) -> String
{
    var usr = HTTP_SERVER_LOGIN
    var pwd = HTTP_SERVER_PWD
    let srv =  HTTP_SERVER_IP + ":" + String(HTTP_SERVER_PORT)
    
    var hashed_request = encode_to_base64(request)
    print(hashed_request)
    
//    let trace = request.data(using: .windowsCP1252)
//    let msg = String(data: trace!, encoding: .windowsCP1252) ?? ""
//    usr = encode_to_base64(usr)
//    pwd = encode_to_base64(pwd)
    

    
//    let hashed_request = encode_to_base64(request)
//    let my_url: String = "http://localhost:3000/Table"
//    //guard let url = URL(string: my_url ) else { return "https://www.stackoverflow.com" }
//    let url = URL(string: "https://www.stackoverflow.com")!
//    //print(url)
//    let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
//        guard let data = data else { return }
//        print(String(data: data, encoding: .utf8)!)
//    }
//
//    task.resume()
//    print(msg)
//    print(hashed_request)
//    print(type(of: trace))
    return hashed_request
}


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

    



