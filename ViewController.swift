//
//  ViewController.swift
//  Hello world
//
//  Created by Albert on 5.05.2022.
//

import UIKit
import CoreData
import Foundation



class ViewController: UIViewController{
    
    @IBOutlet weak var tableView: UITableView!
    

    // let jsonData = JSON.data(using: .utf8)!
  //  let blogPost: [BlogPost] = try! JSONDecoder().decode([BlogPost].self, from: jsonData)


    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("you tapped me!")
    }
}

extension ViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = names[indexPath.row]
        
        return cell
    }
    
}

    
//    override func viewDidLoad() {
//        super.viewDidLoad()
////        let urlString = "http://localhost:3000/Table"
////
////        guard let url = URL(string: urlString) else {return}
////
////        URLSession.shared.dataTask(with: url){ data, response, error in
////            if let error = error {
////                print(error)
////                return
////            }
//
//        let data = """
//        [
//           {
//            "ID":"1",
//            "Name":"2К"
//           },
//           {
//            "ID":"2",
//            "Name":"А4"
//           },
//           {
//            "ID":"3",
//            "Name":"А1"
//           },
//           {
//            "ID":"4",
//            "Name":"АМ"
//           },
//           {
//            "ID":"5",
//            "Name":"БД"
//           },
//           {
//            "ID":"6",
//            "Name":"БС"
//           },
//           {
//            "ID":"7",
//            "Name":"Г1"
//           },
//           {
//            "ID":"8",
//            "Name":"Д1"
//           },
//           {
//            "ID":"9",
//            "Name":"М2"
//           },
//           {
//            "ID":"10",
//            "Name":"МО"
//           },
//           {
//            "ID":"11",
//            "Name":"ММ"
//           },
//           {
//            "ID":"12",
//            "Name":"С"
//           },
//           {
//            "ID":"13",
//            "Name":"Т1"
//           },
//           {
//            "ID":"14",
//            "Name":"У2"
//           },
//           {
//            "ID":"15",
//            "Name":"ДА"
//           },
//           {
//            "ID":"16",
//            "Name":"Э2"
//           },
//           {
//            "ID":"17",
//            "Name":"ЯШ"
//           },
//           {
//            "ID":"18",
//            "Name":"1Е"
//           },
//           {
//            "ID":"19",
//            "Name":"1Ж"
//           },
//           {
//            "ID":"20",
//            "Name":"А5"
//           },
//           {
//            "ID":"21",
//            "Name":"БК"
//           },
//           {
//            "ID":"22",
//            "Name":"БП"
//           },
//           {
//            "ID":"23",
//            "Name":"БФ"
//           },
//           {
//            "ID":"24",
//            "Name":"БХ"
//           },
//           {
//            "ID":"25",
//            "Name":"МГ"
//           },
//           {
//            "ID":"26",
//            "Name":"У1"
//           },
//           {
//            "ID":"27",
//            "Name":"Э1"
//           },
//           {
//            "ID":"28",
//            "Name":"ГК"
//           },
//           {
//            "ID":"29",
//            "Name":"2Г"
//           },
//           {
//            "ID":"30",
//            "Name":"НК"
//           },
//           {
//            "ID":"33",
//            "Name":"СМ"
//           },
//           {
//            "ID":"34",
//            "Name":"Г2"
//           },
//           {
//            "ID":"35",
//            "Name":"Д2"
//           },
//           {
//            "ID":"36",
//            "Name":"ГА"
//           },
//           {
//            "ID":"37",
//            "Name":"КМ"
//           },
//           {
//            "ID":"38",
//            "Name":"УК"
//           },
//           {
//            "ID":"40",
//            "Name":"Н1"
//           },
//           {
//            "ID":"41",
//            "Name":"ЛФ"
//           },
//           {
//            "ID":"42",
//            "Name":"Ф1"
//           },
//           {
//            "ID":"43",
//            "Name":"ХТ"
//           },
//           {
//            "ID":"44",
//            "Name":"НИ"
//           },
//           {
//            "ID":"45",
//            "Name":"АК"
//           },
//           {
//            "ID":"46",
//            "Name":"Ю1"
//           },
//           {
//            "ID":"47",
//            "Name":"З1"
//           },
//           {
//            "ID":"48",
//            "Name":"К1"
//           },
//           {
//            "ID":"49",
//            "Name":"П1"
//           },
//           {
//            "ID":"50",
//            "Name":"ДБ"
//           },
//           {
//            "ID":"51",
//            "Name":"НС"
//           },
//           {
//            "ID":"52",
//            "Name":"КБ"
//           },
//           {
//            "ID":"53",
//            "Name":"ФИ"
//           },
//           {
//            "ID":"54",
//            "Name":"КН"
//           },
//           {
//            "ID":"55",
//            "Name":"БУ"
//           },
//           {
//            "ID":"56",
//            "Name":"В1"
//           },
//           {
//            "ID":"57",
//            "Name":"В2"
//           },
//           {
//            "ID":"58",
//            "Name":"ЭК"
//           },
//           {
//            "ID":"59",
//            "Name":"ЛК"
//           },
//           {
//            "ID":"60",
//            "Name":"ДД"
//           },
//           {
//            "ID":"61",
//            "Name":"К2"
//           },
//           {
//            "ID":"62",
//            "Name":"К4"
//           },
//           {
//            "ID":"63",
//            "Name":"КЩ"
//           },
//           {
//            "ID":"64",
//            "Name":"ОК"
//           },
//           {
//            "ID":"65",
//            "Name":"КС"
//           }
//          ]
//
//
//        """
//        let jsonData = data.data(using: .utf8)!
//        let blogPost: [BlogPost] = try! JSONDecoder().decode([BlogPost].self, from: jsonData)
//
////            guard let data = data else {
////                return
////            }
////            let jsonString = String (data: data, encoding: .utf8)
////            print(jsonString)
//    }.resume()
//    }
//
////    var result: Result?
////
////    private let tableView: UITableView = {
////        let table = UITableView(frame: .zero,
////                                style: .grouped)
////
////        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
////
////        return table
////    }()
////
////    override func viewDidLoad() {
////
////            view.addSubview(tableView)
////            tableView.frame = view.bounds
////            tableView.delegate = self
////            tableView.dataSource = self
////
////            parseJSON()
////
////        super.viewDidLoad()
////    }
////
////    //TableView
////
////    func numberOfSections(in tableView: UITableView) -> Int {
////        return result?.data.count ?? 0
////    }
////
////    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
////        if let result = result {
////            return result.data[section].items.count
////        }
////        return 0
////    }
////
////    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
////        let text = result?.data[indexPath.section].items[indexPath.row]
////        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
////        cell.textLabel?.text = text
////
////        return cell
////    }
////
////    //JSON
////
////     private func parseJSON(){
////        guard let path = Bundle.main.path(
////        forResource:"data",
////        ofType: "json") else {
////            return
////        }
////        let url = URL(fileURLWithPath: path)
////
////
////
////        do{
////            let JsonData = try Data( contentsOf: url)
////            result = try JSONDecoder().decode(Result.self, from: JsonData)
////
////            if let result = result {
////                print{result}
////            }
////            else{
////                print("Failed to pase")
////            }
////
////        }catch{
////            print("Error: \(error)")
////        }
////    }
//
//}
//
//
//
////
////private let tableView: UITableView = {
////    let table = UITableView(frame: .zero,
////                            style: .grouped)
////
////    table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
////
////    return table
////}()
////
////override func viewDidLoad() {
////    super.viewDidLoad()
////
//
////    // Do any additional setup after loading the view.
////}
////
//
////
////private func parseJSON(){
////    guard let path = Bundle.main.path(
////    forResource:"data",
////    ofType: "json") else {
////        return
////    }
////    let url = URL(fileURLWithPath: path)
////
////
////
////    do{
////        let JsonData = try Data( contentsOf: url)
////        result = try JSONDecoder().decode(Result.self, from: JsonData)
////
////
////
////
////    }catch{
////        print("Error: \(error)")
////    }
////}
