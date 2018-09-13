//
//  Category.swift
//  CoderSwaggApp
//
//  Created by Daniel Garofalo on 9/12/18.
//  Copyright © 2018 Daniel Garofalo. All rights reserved.
//

import Foundation

struct Category {
    //Class to set up properties of a single category object
    
    //properties
    //private for setting, public for fetching
    private(set) public var title : String
    private(set) public var imageName : String
    
    init(title: String, imageName: String){
        self.title = title
        self.imageName = imageName
    }
    
    
    
}
