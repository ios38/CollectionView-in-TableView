//
//  HeaderView.swift
//  CollectionView-in-TableView
//
//  Created by Maksim Romanov on 03.01.2020.
//  Copyright © 2020 Maksim Romanov. All rights reserved.
//

import UIKit
class HeaderView: UITableViewHeaderFooterView {
    
    @IBOutlet var headerLabel: UILabel!
    class var customView : HeaderView {
        let cell = Bundle.main.loadNibNamed("HeaderView", owner: self, options: nil)?.last
        return cell as! HeaderView
    }
    
   override func awakeFromNib() {
        super.awakeFromNib()
        //self.contentView.backgroundColor = UIColor.white
    }
}
