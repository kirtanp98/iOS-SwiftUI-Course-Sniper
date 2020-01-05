//
//  NetworkManager.swift
//  CourseSniper
//
//  Created by Kirtan Patel on 1/4/20.
//  Copyright © 2020 Kirtan Patel. All rights reserved.
//

import Foundation
import Combine

class NetworkManager: ObservableObject {
    @Published var subjects: [Subject] = [Subject]()
    
    init(){
        getAllSubjects()
    }
    
    func getAllSubjects(){
        let urlString = "https://sis.rutgers.edu/oldsoc/subjects.json?semester=12020&campus=NB&level=U"
        
        if let url = URL(string: urlString){
            URLSession.shared.dataTask(with: url) { data, response, error in
                if let data = data {
                    do {
                        let subjects = try JSONDecoder().decode([Subject].self, from: data)
                        DispatchQueue.main.async {
                            self.subjects = subjects
                        }
                    } catch let error {
                        print(error)
                    }
                }
                }.resume()
        }
    }
}
