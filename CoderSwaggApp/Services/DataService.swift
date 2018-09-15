//
//  DataService.swift
//  CoderSwaggApp
//
//  Created by Daniel Garofalo on 9/12/18.
//  Copyright © 2018 Daniel Garofalo. All rights reserved.
//

import Foundation

class DataService {
    
    //Singleton: simple object that can be created and reused over and over. The fact that we make it static, allows only for only one singleton to e created and held in memory during the lifecycle of the app
    static let instance = DataService()
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    
    func getCategories() -> [Category] {
        return categories
    }
    
    
}
