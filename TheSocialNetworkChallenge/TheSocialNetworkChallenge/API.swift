//
//  API.swift
//  TheSocialNetworkChallenge
//
//  Created by Milena Maia Araújo on 09/08/22.
//

import Foundation
import UIKit

struct Users: Codable {
//    O codable serve para fazer a tradução de dados do tipo json nos dados que vamos usar no código
//    Os nomes devem ser os mesmos que a API chama para que a conversão do Decoder funcione!
    
    let email: String
    let name: String
    let id: String
}

// implemented api communication

func getUsers(completion: @escaping (([Users]) -> () )) {
    let url = URL(string: "http://adaspace.local/users")!
    
    let task = URLSession.shared.dataTask(with: url){
        
        data, response, error in
        guard let dataResponse = data else {return }
        
        do {let allUsers = try JSONDecoder().decode([Users].self, from: dataResponse)
//            print("object posts: \(posts)")
            completion(allUsers)
            
        } catch let error{
            print("ERROR: \(error)")
        }
    }

    task.resume() // faz a chamada acontecer
    
}

