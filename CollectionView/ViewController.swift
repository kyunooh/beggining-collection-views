//
//  ViewController.swift
//  CollectionView
//
//  Created by jelly on 30/07/2019.
//  Copyright © 2019 triplepy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var collectionView: UICollectionView!
    
    
    
    var collectionData = ["1¡", "2™", "3£", "4¢", "5∞", "6§", "7¶", "8•", "9ª", "10º"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let width = (view.frame.size.width - 20) / 3
        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.itemSize = CGSize(width: width, height: width)
        
        
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
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "DetailSegue", sender: indexPath)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "DetailSegue" {
            if let dest = segue.destination as? DetailViewController, let index = sender as? IndexPath {
                dest.selection = collectionData[index.row]
            }
        }
    }
}

