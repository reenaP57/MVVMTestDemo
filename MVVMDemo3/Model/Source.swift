//
//  Source.swift
//  MVVMDemo3
//
//  Created by mac-0003 on 25/12/18.
//  Copyright © 2018 mac-0003. All rights reserved.
//

import Foundation

typealias JSONDictionary = [String:Any]

struct Source {
    
    var id: String
    var name: String
    var description: String
    
    init?(dict: JSONDictionary) {
        
        guard let id = dict["id"] as? String, let name = dict["name"] as? String, let description = dict["description"] as? String else { return nil }
        
        self.id = id
        self.name = name
        self.description = description
    }
}
