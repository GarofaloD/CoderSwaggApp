//
//  ViewController.swift
//  CoderSwaggApp
//
//  Created by Daniel Garofalo on 9/9/18.
//  Copyright © 2018 Daniel Garofalo. All rights reserved.
//

import UIKit

class CategoriesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var categoryTable : UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        categoryTable.dataSource = self
        categoryTable.delegate = self
    }

    //Number of rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    //Content of the rows
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryTableViewCell{
            let category = DataService.instance.getCategories()[indexPath.row]
            cell.updateviews(category: category)
            return cell
            
        } else {
            return CategoryTableViewCell()
        }
        
        

    }
    
    
    
    
    

}

