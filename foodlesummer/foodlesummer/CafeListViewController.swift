//
//  CafeListViewController.swift
//  foodlesummer
//
//  Created by 김태현 on 2018. 8. 3..
//  Copyright © 2018년 김태현. All rights reserved.
//

import UIKit

class CafeListViewController: UIViewController {
    
    
    struct Cafe {
        var cafeName: String
    }

    var items = [
        Cafe (cafeName: "탐앤탐스 고려대점")
        ]
    
    
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
