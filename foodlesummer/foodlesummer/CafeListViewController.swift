//
//  CafeListViewController.swift
//  foodlesummer
//
//  Created by 김태현 on 2018. 8. 3..
//  Copyright © 2018년 김태현. All rights reserved.
//

import UIKit


class CafeListViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    
    var items = [
        Cafe (cafeNames: "탐앤탐스 고려대점",cafeImages: "image_cafe1",
              cafeHour: "09:00",cafeAddress: "경기도"),
        Cafe (cafeNames: "탐앤탐스 고려대점",cafeImages: "image_cafe1",
              cafeHour: "09:00",cafeAddress: "경기도"),
        Cafe (cafeNames: "탐앤탐스 고려대점",cafeImages: "image_cafe1",
              cafeHour: "09:00",cafeAddress: "경기도"),
        Cafe (cafeNames: "탐앤탐스 고려대점",cafeImages: "image_cafe1",
              cafeHour: "09:00",cafeAddress: "경기도")
        ]
    
    
    
    
    //테이블뷰 데이터소스
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }
//
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CafeListCell", for: indexPath) as! CafeListTableViewCell
        
        let item: Cafe = items[indexPath.row]
        
        cell.textLabel?.text = item.cafeNames
        cell.imageView?.image = UIImage(named: item.cafeImages)
        
        
        return cell
    }




    
    // 상세씬 전환
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailSegue",
            let detailVC = segue.destination as? CafeDetailViewController,
            let cell = sender as? UITableViewCell,
            let index = self.tableView.indexPath(for: cell)
        {
            let item = items[index.row]
            detailVC.itemt = item
        }
    }



    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
