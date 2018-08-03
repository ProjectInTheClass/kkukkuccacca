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
        // 초기 이미지는 첫번째 이미지이므로 왼쪽 버튼은 disabled로
        arrowLeft.isEnabled = false

    }

    
    
    
    
    //좋아요 버튼
    @IBOutlet weak var heartButton: UIButton!
    
    @IBAction func heatButtonAction(_ sender: Any) {
        heartButton.isSelected = !heartButton.isSelected
    }
    
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        cafeImage.image = #imageLiteral(resourceName: "image_cafe1")
        cafeTitle.text = "탐앤탐스 고대점"
        cafeHour.text = "평일 09:00 ~ 22:00 \n 주말 10:00 ~ 21:00"
        cafeAddress.text = "서울 성북구 인촌로24길 63"
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
