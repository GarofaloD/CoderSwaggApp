//
//  CategoryTableViewCell.swift
//  CoderSwaggApp
//
//  Created by Daniel Garofalo on 9/12/18.
//  Copyright © 2018 Daniel Garofalo. All rights reserved.
//

import UIKit

class CategoryTableViewCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage : UIImageView!
    @IBOutlet weak var categoryTitle : UILabel!
    
    func updateCategoryViews(category: Category) {
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
        
    }
    
}
