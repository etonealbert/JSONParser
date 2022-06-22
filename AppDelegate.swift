//
//  AppDelegate.swift
//  ParsingJSON
//
//  Created by Albert on 17.05.2022.
// 
import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        for i in 0...(my_list.count-1){
            result.append("ID: " + my_list[i].id + "    Точка: " + my_list[i].name)
        }
//    print(my_list)
//
//        print(encode_to_base64("Hello"))
        print("_________ Отправляем Запрос: ___________")
       // print(req(request: "SELECT ID FROM Shops"))
        let prefix = "Booker_Test.dbo."
        print(req(reqest: "select ID, Name from \(prefix)Shops"))
        
//        print("_________ Alamofire: ___________")
        
//       repetition()
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

