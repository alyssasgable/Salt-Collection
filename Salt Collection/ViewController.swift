//
//  ViewController.swift
//  Salt Collection
//
//  Created by Alyssa Gable on 11/8/17.
//  Copyright © 2017 Alyssa. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
   var ImageArray = [String]()
   var LabelArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ImageArray = ["black", "celtic", "kosher", "pink", "saltking", "sea", "table"]
        LabelArray = ["Black", "Celtic", "Kosher", "Pink", "Salt King", "Sea", "Table"]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCellClass
        return cell
    }
    
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ImageArray.count
    }
    
    
    func collectionView( _ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionCell", for: indexPath) as! CollectionViewCellClass
       
        cell.ImageView.image = UIImage(named: ImageArray[indexPath.row])
        cell.ImageLabel.text = LabelArray[indexPath.row]
        return cell
    }
}


