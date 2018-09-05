//
//  ViewController.swift
//  Practice
//
//  Created by Jonathan Chong on 9/4/18.
//  Copyright © 2018 Jonathan Chong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //instantiating instead of segue
    @IBAction func HomeButton(_ sender: UIButton) {
        let viewController: UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HomeView") as UIViewController
        self.present(viewController, animated: false, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
