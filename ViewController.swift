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


