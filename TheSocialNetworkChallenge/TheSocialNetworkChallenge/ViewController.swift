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
        getUsers{
        (users) in
            print("user0: \(users[0].email)")
        }
        APIRequestPosts{
            (Posts) in print("Posts\(Posts[0]).")
        }
        // Do any additional setup after loading the view.
    }


}

