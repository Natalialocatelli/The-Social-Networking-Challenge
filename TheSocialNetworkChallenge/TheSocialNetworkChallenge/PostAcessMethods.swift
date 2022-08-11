//
//  PostAcessMethods.swift
//  TheSocialNetworkChallenge
//
//  Created by Natalia Locatelli Barbosa on 10/08/22.
//

import Foundation

import UIKit

func APIRequestPosts(completion: @escaping (([Posts]) -> ())){
    let url = URL(string: "http://adaspace.local/posts")!
    let task = URLSession.shared.dataTask(with: url) { data, response, error in
        
        guard let dataResponse = data else {return}
        
        do {
            let allPosts = try JSONDecoder().decode([Posts].self, from: dataResponse)
            completion(allPosts)
        }
        
        catch let error {
            print("ERROR\(error)")
        }
    }
    task.resume()
}

struct Posts: Codable {
    let user_id: String
    let media: String?
    let like_count: Int
    let created_at: String
    let updated_at: String
    let content: String
}



