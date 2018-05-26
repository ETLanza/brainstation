//
//  RootViewController.swift
//  Profile Viewer With Delegation
//
//  Created by Eric Lanza on 5/21/18.
//  Copyright © 2018 ETLanza. All rights reserved.
//

import UIKit

class RootViewController: UIViewController, DataUpdater {
    

    @IBOutlet var circleProfilePicture: UIImageView!
    @IBOutlet var truncatedDescription: UILabel!
    @IBOutlet var learnMore: UIButton!
    
    var person: Describable = Person(name: "Eric Lanza",
                                      description: "I am the Production Manager at my church in Boca Raton, Fl.  I started to teach myself swift in my free time.",
                                      imageName: "eric-lanza")
   
    func updateData(newData: Describable) {
        self.person.name = newData.name
        self.person.description = newData.description
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        
        self.circleProfilePicture.layer.cornerRadius = self.circleProfilePicture.frame.size.width / 2.0
        self.circleProfilePicture.clipsToBounds = true
        
        
        self.circleProfilePicture.image = UIImage(named: self.person.imageName)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.title = self.person.name
        self.truncatedDescription.text = person.description
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as? ProfileViewController {
            destination.model = self.person
            destination.delegate = self
        }
    }

   
}
