//
//  MenuViewController.swift
//  foodlesummer
//
//  Created by 방문사용자 on 2018. 8. 2..
//  Copyright © 2018년 김태현. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController, UITableViewDataSource {
    
    struct Menu {
        var name : String
        var hotprice : String
        var coolprice : String
    }
    
    let data = [
        Menu(name: "아메리카노", hotprice: "3500", coolprice: "4000"),
        Menu(name: "카페라떼", hotprice: "4000", coolprice: "4200"),
        Menu(name: "바닐라라떼", hotprice: "4500", coolprice: "4700"),
        Menu(name: "카페모카", hotprice: "4500", coolprice: "4600"),
        Menu(name: "카라멜마끼야또", hotprice: "4300", coolprice: "4300"),
        Menu(name: "녹차라떼", hotprice: "4000", coolprice: "4200"),
    ]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Menucell", for: indexPath) as! MenuTableViewCell
        
        cell.menuname.text = data[indexPath.row].name
        cell.coolprice.text = data[indexPath.row].coolprice
        cell.hotprice.text = data[indexPath.row].hotprice
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
