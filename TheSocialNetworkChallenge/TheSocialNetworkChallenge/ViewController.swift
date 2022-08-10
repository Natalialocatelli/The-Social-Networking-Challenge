//
//  ViewController.swift
//  TheSocialNetworkChallenge
//
//  Created by Milena Maia Araújo on 09/08/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        APIConnection{
        (users) in
            print("posts: \(users[0].email)")
        }
        // Do any additional setup after loading the view.
    }


}

