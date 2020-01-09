//
//  News.swift
//  CollectionView-in-TableView
//
//  Created by Maksim Romanov on 02.01.2020.
//  Copyright © 2020 Maksim Romanov. All rights reserved.
//

import UIKit

class News {
    let userName: String
    let newsDate: String
    let newsPhotos: [String]
    let newsText: String

    internal init(_ userName: String, _ newsDate: String, _ newsPhotos: [String], _ newsText: String) {
        self.userName = userName
        self.newsDate = newsDate
        self.newsPhotos = newsPhotos
        self.newsText = newsText
    }

}

func setUpNews()->[News] {
    let news = [
        News("Animals","01.01.2020", [
                    "animals_1",
                    "animals_2",
                    "animals_3",
                    "animals_4",
                    "animals_5"],
             "Animals are multicellular eukaryotic organisms that form the biological kingdom Animalia." ),
        News("Birds","01.01.2020", [
                    "birds_1",
                    "birds_2",
                    "birds_3",
                    "birds_4",
                    "birds_5"],
             "Birds are a group of endothermic vertebrates constituting the class Aves, the laying of hard-shelled eggs." ),
        News("Fishes","01.01.2020", [
                    "fishes_1",
                    "fishes_2",
                    "fishes_3",
                    "fishes_4",
                    "fishes_5"],
             "Fish are gill-bearing aquatic craniate animals that lack limbs with digits." ),
    ]
    return(news)
}
