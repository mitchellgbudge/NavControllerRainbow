//
//  ColorDetailViewController.swift
//  Rainbow
//
//  Created by Mitchell Budge on 8/12/19.
//  Copyright © 2019 Mitchell Budge. All rights reserved.
//

import UIKit

class ColorDetailViewController: UIViewController {

    var cellColor: MyColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    func updateViews() {
        guard let cellColor = cellColor else { return }
        view.backgroundColor = cellColor.color
        title = cellColor.name
    }
    

}
