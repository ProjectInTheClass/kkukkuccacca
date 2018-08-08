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
        Cafe (cafeNames: "트리아농",cafeImages: "cafe0",
              cafeHour: "매일 09:00 - 22:00 일요일 휴무",cafeAddress: "서울 강남구 학동로59길 43", cafeWifi : false, cafeToilet : true, cafeSmoking : true, cafeParking : true, rate : 3.5,),
        Cafe (cafeNames: "알베르",cafeImages: "cafe1",
              cafeHour: "매일 11:00 - 23:00",cafeAddress: "서울 강남구 강남대로102길 34", cafeWifi : false, cafeToilet : false, cafeSmoking : false, cafeParking : true, rate : 4.0),
        Cafe (cafeNames: "이디야커피랩",cafeImages: "cafe2",
              cafeHour: "매일 07:30 - 02:00",cafeAddress: "서울 강남구 논현로 636", cafeWifi : false, cafeToilet : false, cafeSmoking : true, cafeParking : true, rate : 2.5),
        Cafe (cafeNames: "오아시스",cafeImages: "cafe3",
              cafeHour: "평일 09:00 - 20:00",cafeAddress: "서울 강남구 도산대로55길 20", cafeWifi : true, cafeToilet : false, cafeSmoking : true, cafeParking : false, rate : 5.0),
        Cafe (cafeNames: "미엘",cafeImages: "cafe4",
              cafeHour: "매일 11:00 - 24:00",cafeAddress: "서울 강남구 도산대로67길 13-12", cafeWifi : true, cafeToilet : true, cafeSmoking : false, cafeParking : false, rate : 5.0),
        Cafe (cafeNames: "cafe_the_healing",cafeImages: "cafe5",
              cafeHour: "09:00 ~ 21:00",cafeAddress: "서울 광진구 능동로11길 10", cafeWifi : false, cafeToilet : false, cafeSmoking : true, cafeParking : true, rate : 5.0),
        Cafe (cafeNames: "Less is More",cafeImages: "cafe6",
              cafeHour: "08:00 ~ 22:00",cafeAddress: "서울 광진구 동일로20길 89", cafeWifi : true, cafeToilet : false, cafeSmoking : false, cafeParking : true, rate : 5.0),
        Cafe (cafeNames: "103 express",cafeImages: "cafe7",
              cafeHour: "08:00 ~ 18:00",cafeAddress: "서울 광진구 능동로13길 23", cafeWifi : false, cafeToilet : false, cafeSmoking : false, cafeParking : false, rate : 5.0),
        Cafe (cafeNames: "Cafe_be_Happy",cafeImages: "cafe8",
              cafeHour: "09:00 ~ 23:00",cafeAddress: "서울 광진구 동일로22길", cafeWifi : false, cafeToilet : false, cafeSmoking : true, cafeParking : false, rate : 5.0),
        Cafe (cafeNames: "Silverlick",cafeImages: "cafe9",
              cafeHour: "08:00 ~ 24:00",cafeAddress: "서울 광진구 능동로50길 9", cafeWifi : false, cafeToilet : false, cafeSmoking : false, cafeParking : false, rate : 5.0)
        
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
            detailVC.itemt = item }
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
