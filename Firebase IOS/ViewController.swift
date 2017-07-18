//
//  ViewController.swift
//  Firebase IOS
//
//  Created by Abdul Ahad on 7/17/17.
//  Copyright © 2017 plash. All rights reserved.
//

import UIKit

//importing firebase
import Firebase

class ViewController: UIViewController {

    
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var userpassword: UITextField!
    @IBOutlet weak var status: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        FirebaseApp.configure()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func Register(_ sender: UIButton) {
        let userName = username.text;
        let password = userpassword.text;
        Auth.auth().createUser(withEmail: userName!, password: password!, completion: { (user: User?, error) in
            if error == nil {
                self.status.text = "You are successfully registered"
            }else{
                self.status.text = "Registration Failed.. Please Try Again"
            }
            
        })
        
    }
}

