//
//  ReviewViewController.swift
//  foodlesummer
//
//  Created by 방문사용자 on 2018. 8. 10..
//  Copyright © 2018년 김태현. All rights reserved.
//

import UIKit

class ReviewViewController: UIViewController, UITableViewDataSource {
    
    //리뷰 데이터 들어가야 할 부분///
    let reviews : [Review] = []
    
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return reviews.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReviewCell", for: indexPath) as! ReviewTableViewCell
        
        cell.nicknameLabel.text = reviews[indexPath.row].nickName
        cell.reviewdateLabel.text = String(reviews[indexPath.row].reviewRate)
        cell.rateLabel.text = String(reviews[indexPath.row].reviewRate)
        cell.reviewLabel.text = reviews[indexPath.row].review
        cell.userPicture.image = UIImage(named: reviews[indexPath.row].userImage)
        
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
