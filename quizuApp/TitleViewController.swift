//
//  TitleViewController.swift
//  quizuApp
//
//  Created by Atsushi on 2018/07/22.
//  Copyright © 2018年 Atsushi. All rights reserved.
//

import UIKit

class TitleViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let a = 5
        if a < 5 {
            print("5未満")
        } else if a >= 10 {
            print("10以上")
        } else {
            print("それ以外")
        }

    }
    
    @IBAction func alert(_ sender: Any) {
        show(style: .alert)
    }
    
    
    @IBAction func action(_ sender: Any) {
        show(style: .actionSheet)
    }
    
    func show(style: UIAlertControllerStyle) {
        let alertController = UIAlertController(title: "title", message: nil, preferredStyle: style)
        
        let action1 = UIAlertAction(title: "action1", style: .default) { (action: UIAlertAction) in
            print("tap action1")
        }
        
        let action2 = UIAlertAction(title: "action2", style: .default) { (action: UIAlertAction) in
            print("tap action2")
        }
        
        let action3 = UIAlertAction(title: "action3", style: .destructive) { (action: UIAlertAction) in
            print("tap action3")
        }
        
        let cancelAction = UIAlertAction(title: "cancel", style: .cancel, handler: nil)
        
        alertController.addAction(action1)
        alertController.addAction(action2)
        alertController.addAction(action3)
        alertController.addAction(cancelAction)
        
        UIApplication.shared.keyWindow?.rootViewController?.present(alertController, animated:true, completion: nil)
    }
    
}
