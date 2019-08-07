//
//  DetailViewController.swift
//  CollectionView
//
//  Created by jelly on 31/07/2019.
//  Copyright © 2019 triplepy. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var selection: String!
    @IBOutlet private weak var detailsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        detailsLabel.text = selection
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
