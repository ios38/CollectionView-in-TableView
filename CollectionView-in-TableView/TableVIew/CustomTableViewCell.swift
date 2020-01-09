//
//  CustomTableViewCell.swift
//  CollectionView-in-TableView
//
//  Created by Maksim Romanov on 02.01.2020.
//  Copyright © 2020 Maksim Romanov. All rights reserved.
//

import Foundation
import UIKit

class CustomTableViewCell:UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate {

@IBOutlet weak var myCollectionView: UICollectionView!

class var customCell : CustomTableViewCell {
    let cell = Bundle.main.loadNibNamed("CustomTableViewCell", owner: self, options: nil)?.last
    return cell as! CustomTableViewCell
}

override func awakeFromNib() {
    super.awakeFromNib()

    //TODO: need to setup collection view flow layout

    //Comment if you set Datasource and delegate in .xib
    //self.myCollectionView.dataSource = self
    //self.myCollectionView.delegate = self
}

//MARK: Collection view datasource and Delegate

func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

    //TODO: need to reutrn number of items to be shown in collection view
    return 0
}

func numberOfSections(in collectionView: UICollectionView) -> Int {

    return 5
}

func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

    //TODO: Need to modify this method to load custom cell
    return UICollectionViewCell()

}
}
