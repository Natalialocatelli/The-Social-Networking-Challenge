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
        (posts) in
            print("posts: \(posts[0])")
        }
        // Do any additional setup after loading the view.
    }


}

