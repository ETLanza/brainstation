//
//  SecondViewController.swift
//  Navigator
//
//  Created by Eric Lanza on 5/7/18.
//  Copyright © 2018 ETLanza. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var propertyToSet: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.title = self.propertyToSet
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
