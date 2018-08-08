//
//  CafeDetailViewController.swift
//  foodlesummer
//
//  Created by 김태현 on 2018. 8. 2..
//  Copyright © 2018년 김태현. All rights reserved.
//

import UIKit

struct Signature {
    var name : String
    var picture : UIImage
    var price : String
}


class CafeDetailViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UITableViewDataSource {
    
    @IBOutlet weak var cafeImage: UIImageView!
    @IBOutlet weak var arrowLeft: UIButton!
    @IBOutlet weak var arrowRight: UIButton!
    @IBOutlet weak var cafeTitle: UILabel!
    @IBOutlet weak var cafeHour: UILabel!
    @IBOutlet weak var cafeAddress: UILabel!
    
    
    //카페 불리안
    
    @IBOutlet weak var wifiLabel: UILabel!
    
    @IBOutlet weak var toiletLabel: UILabel!
    
    @IBOutlet weak var parkingLabel: UILabel!
    
    @IBOutlet weak var smokingLabel: UILabel!
    
    
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
    
    
    
    
    ////viewwillappear : 카페 키워드 불리안 설정하는 부분.
    override func viewWillAppear(_ animated: Bool) {
        
        if let itemq = itemt{
            cafeTitle.text = itemq.cafeNames
            cafeHour.text = itemq.cafeHour
            cafeAddress.text = itemq.cafeAddress
            cafeImage.image = UIImage(named: itemq.cafeImages)
            
            
            showImage(index: 0)
        }
        
        //카페 불리안 색깔 설정
        if itemt!.cafeWifi == false {
            wifiLabel.textColor = UIColor.gray
        } else {
            wifiLabel.textColor = UIColor.black
        }
        
        if itemt!.cafeToilet == false {
            toiletLabel.textColor = UIColor.gray
        } else {
            toiletLabel.textColor = UIColor.black
        }
        
        if itemt!.cafeSmoking == false {
            smokingLabel.textColor = UIColor.gray
        } else {
            smokingLabel.textColor = UIColor.black
        }
        
        if itemt!.cafeParking == false {
            parkingLabel.textColor = UIColor.gray
        } else {
            parkingLabel.textColor = UIColor.black
        }
        }
    
    //////////////////////////여기부터 메뉴 테이블 셀 & 시그니처 메뉴 콜렉션 넣는 부분.
    
    
    //섹션의 셀 개수(커피, 차, 프라푸치노 총 3개)
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    //섹션마다의 셀 개수
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if 0 == section {
            return itemt!.menu[0].count
        } else if 1 == section {
            return item!.menu[1].count
        } else {
            return item!.menu[2].count
        }
    }
    
    //섹션마다의 제목 붙여줌
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "coffee"
        } else if section == 1 {
            return "tea"
        } else {
            return "Fraqquccino"
        }
        
    //셀 정보 입력
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Menucell", for: indexPath) as! MenuTableViewCell
        
        if indexPath.section == 0 {
            cell.menuname.text = item!.menu[0][indexPath.row].name
            cell.coolprice.text = item!.menu[0][indexPath.row].coolprice
            cell.hotprice.text = item!.menu[0][indexPath.row].hotprice
            
            return cell} else if indexPath.section == 1 {
                cell.menuname.text = item!.menu[1][indexPath.row].name
                cell.coolprice.text = item!.menu[1][indexPath.row].coolprice
                cell.hotprice.text = item!.menu[1][indexPath.row].hotprice
                
            return cell} else{
                    cell.menuname.text = item!.menu[2][indexPath.row].name
                    cell.coolprice.text = item!.menu[2][indexPath.row].coolprice
                    cell.hotprice.text = item!.menu[2][indexPath.row].hotprice
                    
                    return cell
        }
        }
        //////////여기서부턴 시그니처 콜렉션 뷰 셀
        
        //셀 크기 조정하는 부분
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            let width = collectionView.frame.size.width / 2 - 2
            let height = width * 1.2
            let size = CGSize(width: width, height: height)
            return size
        }
    

    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

