//
//  SecondViewController.swift
//  Todo Lists
//
//  Created by SimpuMind on 8/31/16.
//  Copyright © 2016 SimpuMind. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet var item: UITextField!
    
    @IBAction func addItem(sender: AnyObject) {
        
        if let itemValue = item.text{
            toDoList.append(itemValue)
            item.text = ""
            
            NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: "toDoList")
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFeildShoudReturn(textFeild: UITextField!) -> Bool{
        item.resignFirstResponder()
        return true
    }

}

