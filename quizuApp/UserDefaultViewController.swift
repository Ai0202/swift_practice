//
//  UserDefaultViewController.swift
//  quizuApp
//
//  Created by Atsushi on 2018/07/22.
//  Copyright © 2018年 Atsushi. All rights reserved.
//

import UIKit

class UserDefaultViewController: UIViewController, UITableViewDelegate,
    UITableViewDataSource {

    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var tableView: UITableView!
    
    var arr = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if UserDefaults.standard.object(forKey: "arr") != nil {
            arr = UserDefaults.standard.object(forKey: "arr") as! [String]
        }
        
    }

    @IBAction func add(_ sender: Any) {
        if UserDefaults.standard.object(forKey: "arr") != nil {
            arr = UserDefaults.standard.object(forKey: "arr") as! [String]
        }
        
        arr.append(textField.text!)
        
        UserDefaults.standard.set(arr, forKey: "arr")
        
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = arr[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
}
