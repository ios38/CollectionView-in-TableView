//
//  TableViewController.swift
//  CollectionView-in-TableView
//
//  Created by Maksim Romanov on 02.01.2020.
//  Copyright © 2020 Maksim Romanov. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    let headerReuseId = "TableHeaderViewReuseId"
    let news = setUpNews()

    override func viewDidLoad() {
        super.viewDidLoad()

        let headerNib = UINib(nibName: "HeaderView", bundle: nil)
        tableView.register(headerNib, forHeaderFooterViewReuseIdentifier: headerReuseId)
                
    }

    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return news.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) ->  CGFloat {
        return 90
    }
    /*
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let newsHeader = news[section].newsDate + " " + news[section].userName
        return String(newsHeader)
    }*/

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //TODO: сделать подготовку ячейки как в VK Client
        var cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as? TableViewCell
        if cell == nil {
            cell = TableViewCell.customCell
        }
        let newsPhotos = news[indexPath.section].newsPhotos
        cell?.updateCellWith(newsPhotos: newsPhotos)
        //cell?.cellDelegate = self
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
            return 30
    }
        
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
         var view = tableView.dequeueReusableHeaderFooterView(withIdentifier: headerReuseId) as? HeaderView
         if view == nil {
            view = HeaderView.customView
         }
         let newsHeader = news[section].newsDate + " " + news[section].userName
         view?.headerLabel.text = newsHeader
         return view
    }
}
