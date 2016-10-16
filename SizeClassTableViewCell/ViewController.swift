//
//  ViewController.swift
//  SizeClassTableViewCell
//
//  Created by Suraphan Laokondee on 10/15/2559 BE.
//  Copyright © 2559 Suraphan Laokondee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.estimatedRowHeight = 60
        tableView.rowHeight = UITableViewAutomaticDimension
    }
    
}

extension ViewController: UITableViewDelegate {
 
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
        cell.label.adjustsFontForContentSizeCategory = true
        return cell
    }
}

