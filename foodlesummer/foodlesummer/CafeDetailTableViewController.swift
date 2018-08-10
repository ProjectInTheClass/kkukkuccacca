//
//  CafeDetailTableViewController.swift
//  foodlesummer
//
//  Created by 김태현 on 2018. 8. 10..
//  Copyright © 2018년 김태현. All rights reserved.
//

import UIKit

class CafeDetailTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
      
    }

  

    override func numberOfSections(in tableView: UITableView) -> Int {
       
        return 8
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return 0
    }

   
 
}
