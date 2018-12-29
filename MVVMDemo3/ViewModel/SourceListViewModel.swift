//
//  SourceListViewModel.swift
//  MVVMDemo3
//
//  Created by mac-0003 on 25/12/18.
//  Copyright © 2018 mac-0003. All rights reserved.
//

import Foundation
import UIKit

var sourceViewModels = [SourceViewModel]()

class SourceListViewModel: NSObject {
    
    func populateSources(completion: @escaping (Bool) -> Void) {
        APIRequest.sharedInstance.loadSource { (sources) in
            sourceViewModels = sources.compactMap(SourceViewModel.init)
            completion(true)
        }
    }
}

class SourceViewModel {
    
    var id: String?
    var name: String
    var description: String
    
    init(source: Source) {
        self.id = source.id
        self.name = source.name
        self.description = source.description
    }
}
