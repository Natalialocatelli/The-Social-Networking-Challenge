//
//  API.swift
//  TheSocialNetworkChallenge
//
//  Created by Milena Maia Araújo on 09/08/22.
//

import Foundation
import UIKit

// implemented api communication
func connectAPI(){
    let url = URL(string: "http://adaspace.local/users")!
    let task = URLSession.shared.dataTask(with: url){
        data, response, error in
        if let data = data{
            print(data)
            // JSONDecoder / JSONEncoder
            // Codable
        } else if let error = error {
            print("HTTP failed!\n \(error)")
        }
    }

    task.resume()
}

