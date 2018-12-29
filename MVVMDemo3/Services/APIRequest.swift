//
//  APIRequest.swift
//  MVVMDemo3
//
//  Created by mac-0003 on 25/12/18.
//  Copyright © 2018 mac-0003. All rights reserved.
//

import Foundation

class APIRequest: NSObject {
    
    private let sourceURL = URL(string: "https://newsapi.org/v2/sources?apiKey=0cf790498275413a9247f8b94b3843fd")!
    
    static let sharedInstance = APIRequest.init()
    
    func loadSource(completion: @escaping ([Source]) -> ()) {
        
        let task = URLSession.shared.dataTask(with: sourceURL) { data, response, error in
            if let data = data {
                let json = try! JSONSerialization.jsonObject(with: data, options: [])
                if let dicData = json as? JSONDictionary {
                    
                    if let dictionaries = dicData["sources"] as? [JSONDictionary] {
                        let sources = dictionaries.compactMap(Source.init)
                        
                        DispatchQueue.main.async {
                            completion(sources)
                        }
                    }
                }
            }
        }
        task.resume()
    }
}
