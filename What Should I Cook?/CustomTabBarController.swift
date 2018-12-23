//
//  TabBarController.swift
//  What Should I Cook?
//
//  Created by Sameer Saptarshi on 12/19/18.
//  Copyright © 2018 SameerSaptarshi. All rights reserved.
//

import Foundation
import UIKit


class CustomTabBarController: UITabBarController, UITableViewDataSource, UITableViewDelegate {

    let TABS = ["Meats", "Vegetables", "Carbs", "Extras"]
    var meatArray = [String]()
    @IBOutlet var meatTable: UITableView!
    @IBOutlet weak var meatText: UITextField!
    
    var carbArray = [String]()
    @IBOutlet weak var carbTable: UITableView!
    @IBOutlet weak var carbText: UITextField!
    
    var vegArray = [String]()
    @IBOutlet weak var vegTable: UITableView!
    @IBOutlet weak var vegText: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
//        switch self.tabBarItem.title! {
//        case "Meats":
//            self.meatTable.delegate = self
//            self.meatTable.dataSource = self
//            return
//        case "Vegetables":
//            vegTable.delegate = self
//            vegTable.dataSource = self
//        case "Carbs":
//            carbTable.delegate = self
//            carbTable.dataSource = self
//        default:
//            return
//        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch tableView {
        case meatTable:
            return meatArray.count
        case carbTable:
            return carbArray.count
        case vegTable:
            return vegArray.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch tableView {
        case meatTable:
            print("meat")
            let cell = meatTable.dequeueReusableCell(withIdentifier: "meat1", for: indexPath)
            let row = indexPath.row
            cell.textLabel?.text = meatArray[row]
            return cell
        case carbTable:
            let cell = carbTable.dequeueReusableCell(withIdentifier: "carb1", for: indexPath)
            let row = indexPath.row
            cell.textLabel?.text = carbArray[row]
            return cell
        case vegTable:
            let cell = vegTable.dequeueReusableCell(withIdentifier: "veg1", for: indexPath)
            let row = indexPath.row
            cell.textLabel?.text = vegArray[row]
            return cell
        default:
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            switch tableView {
            case meatTable:
                meatArray.remove(at: indexPath.row)
                // delete the table view row
                meatTable.deleteRows(at: [indexPath], with: .fade)
            case vegTable:
                vegArray.remove(at: indexPath.row)
                // delete the table view row
                vegTable.deleteRows(at: [indexPath], with: .fade)
            case carbTable:
                carbArray.remove(at: indexPath.row)
                // delete the table view row
                carbTable.deleteRows(at: [indexPath], with: .fade)
            default:
                return
            }
        }
    }
    
    
    
    
    
    
    
    
    
    
}
    


    

