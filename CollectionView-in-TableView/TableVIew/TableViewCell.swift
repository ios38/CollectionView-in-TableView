//
//  TableViewCell.swift
//  CollectionView-in-TableView
//
//  Created by Maksim Romanov on 02.01.2020.
//  Copyright © 2020 Maksim Romanov. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var CollectionView: UICollectionView!
    var newsPhotos: [String]?
    let cellReuseId = "CollectionViewCell" //define this
    
    class var customCell : TableViewCell {
        let cell = Bundle.main.loadNibNamed("TableViewCell", owner: self, options: nil)?.last
        return cell as! TableViewCell
    }
    
    override func awakeFromNib() {
            super.awakeFromNib()
            //TODO: need to setup collection view flow layout
            let flowLayout = UICollectionViewFlowLayout()
            flowLayout.scrollDirection = .horizontal
            flowLayout.itemSize = CGSize(width: 90, height: 90)
            flowLayout.minimumLineSpacing = 1.0
            flowLayout.minimumInteritemSpacing = 1.0
            self.CollectionView.collectionViewLayout = flowLayout
            
            //Comment if you set Datasource and delegate in .xib
            //self.CollectionView.dataSource = self
            //self.CollectionView.delegate = self
            
            //Register the xib for collection view cell
            let cellNib = UINib(nibName: "CollectionViewCell", bundle: nil)
            self.CollectionView.register(cellNib, forCellWithReuseIdentifier: cellReuseId)
    }

    //MARK: Instance Methods
    func updateCellWith(newsPhotos: [String]) {
        self.newsPhotos = newsPhotos
        self.CollectionView.reloadData()
    }

    //MARK: Collection view datasource and Delegate

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if let newsPhotos = self.newsPhotos {
            return newsPhotos.count
        } else {
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        //TODO: Need to modify this method to load custom cell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellReuseId, for: indexPath) as? CollectionViewCell
        
        if let newsPhoto = self.newsPhotos?[indexPath.item] {
            cell?.cellImageView.image = UIImage(named: newsPhoto)
           //cell?.updateCellWithImage(name: newsPhoto)
        }
        
        return cell!
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    
}
