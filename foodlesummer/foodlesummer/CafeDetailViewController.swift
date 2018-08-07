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
    @IBOutlet weak var arrowLeft: UIButton!
    @IBOutlet weak var arrowRight: UIButton!
    @IBOutlet weak var cafeTitle: UILabel!
    @IBOutlet weak var cafeHour: UILabel!
    @IBOutlet weak var cafeAddress: UILabel!
    
    
    
    
    // 상세 정보
    var itemt: Cafe?

    
    
    
    //이미지 넣기
    var currentImageIndex = 0
    var imagest: [String] = []
    let images = [
        "image_cafe1",
        "image_cafe2",
        "image_cafe3"
    ]

    
    
    
    //이미지 넣기
    func showImage(index: Int) {
        let imageName = images[index]
        cafeImage.image = UIImage(named: imageName)
        // 좌/우 이미지 이동이 불가능한 상태면 버튼 상태를 disabled로
        arrowLeft.isEnabled = index > 0
        arrowRight.isEnabled = index < images.count - 1
    }
    
    
    
    
    //이미지 넘기기
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
        
             //구분선 그리기 (생략)
        
        
        // 사용자 프로필 이미지를 둥글게 (생략)

    }

    
    
    
    
    //좋아요 버튼
    @IBOutlet weak var heartButton: UIButton!
    
    @IBAction func heatButtonAction(_ sender: Any) {
        heartButton.isSelected = !heartButton.isSelected
    }
    
    
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        
        if let itemq = itemt{
            cafeTitle.text = itemq.cafeNames
            cafeHour.text = itemq.cafeHour
            cafeAddress.text = itemq.cafeAddress
            cafeImage.image = UIImage(named: itemq.cafeImages)
            
            
            showImage(index: 0)
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

