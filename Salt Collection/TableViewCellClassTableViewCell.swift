//
//  TableViewCellClassTableViewCell.swift
//  Salt Collection
//
//  Created by Alyssa Gable on 11/20/17.
//  Copyright © 2017 Alyssa. All rights reserved.
//

import UIKit

class TableViewCellClass: UITableViewCell {

    @IBOutlet weak var collectionViewOutlet: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
