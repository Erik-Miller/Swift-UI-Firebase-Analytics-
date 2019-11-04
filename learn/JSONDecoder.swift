//
//  JSONDecoder.swift
//  learn
//
//  Created by Erik Miller on 10/30/19.
//  Copyright © 2019 Erik Miller. All rights reserved.
//

import Foundation
import UIKit

struct UserPosts: Decodable {
    let userID: String
    let title: String
    let completed: String
}



class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let jsonUrlString = "https://jsonplaceholder.typicode.com/posts"
        
        
        guard let url = URL(string: jsonUrlString) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, err) in
            //perhaps check err
            //also perhaps check response status 200 OK
            
            guard let data = data else { return }
            
//            let dataAsString = String(data: data, encoding: .utf8)
//            print(dataAsString)
            
            do {
//                let websiteDescription = try JSONDecoder().decode(WebsiteDescription.self, from: data)
//                print(websiteDescription.name, websiteDescription.description)
                
                let user = try JSONDecoder().decode([UserPosts].self, from: data)
                print(data)
                
                //Swift 2/3/ObjC
//                guard let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String: Any] else { return }
//
//                let course = Course(json: json)
//                print(course.name)
                
            } catch let jsonErr {
                print("Error serializing json:", jsonErr)
            }
            
                        
            
        }.resume()
        
//        let myCourse = Course(id: 1, name: "my course", link: "some link", imageUrl: "some image url")
//        print(myCourse)
    }

}
