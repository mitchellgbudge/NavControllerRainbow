//
//  ColorsTableViewController.swift
//  Rainbow
//
//  Created by Mitchell Budge on 8/12/19.
//  Copyright © 2019 Mitchell Budge. All rights reserved.
//

import UIKit

class ColorsTableViewController: UITableViewController {
    
    var colors: [MyColor] = [MyColor(name: "Red", color: .red),
                             MyColor(name: "Orange", color: .orange),
                             MyColor(name: "Yellow", color: .yellow),
                             MyColor(name: "Green", color: .green),
                             MyColor(name: "Blue", color: .blue),
                             MyColor(name: "Cyan", color: .cyan),
                             MyColor(name: "Purple", color: .purple)
                             ]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell", for: indexPath)
        let myColor = colors[indexPath.row]
        cell.textLabel?.text = myColor.name
        return cell
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ColorDetail" {
            guard let indexPath = tableView.indexPathForSelectedRow,
                let colorDetailVC = segue.destination as? ColorDetailViewController else { return }
            colorDetailVC.cellColor = colors[indexPath.row]
        }
    }
}
