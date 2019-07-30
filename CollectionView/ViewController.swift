//
//  ViewController.swift
//  CollectionView
//
//  Created by jelly on 30/07/2019.
//  Copyright © 2019 triplepy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var collectionData = ["1¡", "2™", "3£", "4¢", "5∞", "6§", "7¶", "8•", "9ª", "10º"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return collectionData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath)
        if let label = cell.viewWithTag(100) as? UILabel {
            label.text = collectionData[indexPath.row]
        }
        
        return cell
    }
}
