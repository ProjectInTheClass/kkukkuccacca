//
//  CafeDetailViewController.swift
//  foodlesummer
//
//  Created by 김태현 on 2018. 8. 2..
//  Copyright © 2018년 김태현. All rights reserved.
//

import UIKit

class CafeDetailViewController: UIViewController {
    

    @IBOutlet weak var cafeImage: UIImageView!
    @IBOutlet weak var cafeTitle: UILabel!
    @IBOutlet weak var cafeHour: UILabel!
    @IBOutlet weak var cafeAddress: UILabel!
    
    
    
    //이미지 넣기
    var currentImageIndex = 0
    let images = [
        "image_cafe1",
        "image_cafe2",
        "image_cafe3"
    ]
    
    @IBOutlet weak var arrowLeft: UIButton!
    @IBOutlet weak var arrowRight: UIButton!
    
    func showImage(index: Int) {
        let imageName = images[index]
        cafeImage.image = UIImage(named: imageName)
        // 좌/우 이미지 이동이 불가능한 상태면 버튼 상태를 disabled로
        arrowLeft.isEnabled = index > 0
        arrowRight.isEnabled = index < images.count - 1
    }
    
    @IBAction func showPrevImage(_ sender: Any) {
        currentImageIndex -= 1
        self.showImage(index: currentImageIndex)
    }
    
    @IBAction func showNextImage(_ sender: Any) {
        currentImageIndex += 1
        self.showImage(index: currentImageIndex)
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
