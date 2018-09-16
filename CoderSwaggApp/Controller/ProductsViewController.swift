//
//  ProductsViewController.swift
//  CoderSwaggApp
//
//  Created by Daniel Garofalo on 9/15/18.
//  Copyright © 2018 Daniel Garofalo. All rights reserved.
//

import UIKit

class ProductsViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var productsCollection : UICollectionView!
    
    
    //We create it as an empt array so it can base the display of the items on an array. If it turns out that the items are not loading, it would crash if there is not an structure to base it like this
    private(set) public var products = [Product]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        productsCollection.dataSource = self
        productsCollection.delegate = self
    }
    
    func initializeProducts(category: Category){
        products = DataService.instance.getProducts(forCategoryTitle: category.title)
        navigationItem.title = category.title
    }

    
    
    //Number of Items?
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    
    //Content of Items?
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "productItem", for: indexPath) as? ProductCell {
            let product = products[indexPath.row]
            cell.updateProductView(product: product)
            return cell
        } else {
            return ProductCell()
        }
    }
    
    
    
    
    

}
