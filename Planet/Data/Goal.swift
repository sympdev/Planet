//
//  Goal.swift
//  Planet
//
//  Created by Josh Martine on 10/24/17.
//  Copyright © 2017 Josh Martine. All rights reserved.
//

import Foundation

class Goal {
    //MARK: - Properties
    var title: String
    var description: String
    var completed: Bool
    
    init?(title: String, description: String) {
        guard !title.isEmpty else {
            return nil
        }
        
        guard !description.isEmpty else {
            return nil
        }
        
        self.title = title
        self.description = description
        self.completed = false
    }
    
}
