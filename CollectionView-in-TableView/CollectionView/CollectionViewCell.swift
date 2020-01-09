//
//  CollectionViewCell.swift
//  CollectionView-in-TableView
//
//  Created by Maksim Romanov on 02.01.2020.
//  Copyright © 2020 Maksim Romanov. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var cellImageView: UIImageView!
    
    //creates new cell form xib
    class var CustomCell : CollectionViewCell {
        let cell = Bundle.main.loadNibNamed("CollectionViewCell", owner: self, options: nil)?.last
        return cell as! CollectionViewCell
    }


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        //self.backgroundColor = UIColor.red
    }
    
    func updateCellWithImage(name:String) {
        self.cellImageView.image = UIImage(named: name)
    }

}
