//
//  NetworkManager.swift
//  CourseSniper
//
//  Created by Kirtan Patel on 1/4/20.
//  Copyright © 2020 Kirtan Patel. All rights reserved.
//

import Foundation
import Combine

class CourseNetworkManager: ObservableObject {
    @Published var courses: [Course] = [Course]()
    
    init(subject: String){
        getAllSubjects(subject: subject)
    }
    
    func getAllSubjects(subject: String){
        let urlString = "https://sis.rutgers.edu/oldsoc/courses.json?semester=12020&campus=NB&level=U&subject=\(subject)"
        
        if let url = URL(string: urlString){
            URLSession.shared.dataTask(with: url) { data, response, error in
                if let data = data {
                    do {
                        let subjects = try JSONDecoder().decode([Course].self, from: data)
                        DispatchQueue.main.async {
                            self.courses = subjects
                        }
                    } catch let error {
                        print(error)
                    }
                }
                }.resume()
        }
    }
}
