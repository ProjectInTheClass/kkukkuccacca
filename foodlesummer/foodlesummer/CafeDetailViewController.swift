//
//  CafeDetailViewController.swift
//  foodlesummer
//
//  Created by 김태현 on 2018. 8. 2..
//  Copyright © 2018년 김태현. All rights reserved.
//



import UIKit
//import XLPagerTabStrip
//
//class MyPagerTabStripName: ButtonBarPagerTabStripViewController {
//    
//}



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
        let imageName = itemt!.cafeInfoImage[index]
        cafeImage.image = UIImage(named: imageName)
        // 좌/우 이미지 이동이 불가능한 상태면 버튼 상태를 disabled로
        arrowLeft.isEnabled = index > 0
        arrowRight.isEnabled = index < images.count - 1
    }
    
    
    
    
    //이미지 좌우 넘기기
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
    
    
    
    //섹션의 셀 개수(커피, 차, 프라푸치노 총 3개)
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    
    
    //섹션마다의 셀 개수
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if 0 == section {
            return itemt!.menu_coffee.count
        } else if 1 == section {
            return itemt!.menu_tea.count
        } else {
            return itemt!.menu_frappuccino.count
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
    }
    
    
    
    //셀 정보 입력
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Menucell", for: indexPath) as! MenuTableViewCell
        
        if indexPath.section == 0 {
            cell.menuname.text = itemt!.menu_coffee[indexPath.row].name
            cell.coolprice.text = itemt!.menu_coffee[indexPath.row].coolprice
            cell.hotprice.text = itemt!.menu_coffee[indexPath.row].hotprice
            
            return cell
            
        }
        else if indexPath.section == 1 {
            cell.menuname.text = itemt!.menu_tea[indexPath.row].name
            cell.coolprice.text = itemt!.menu_tea[indexPath.row].coolprice
            cell.hotprice.text = itemt!.menu_tea[indexPath.row].hotprice
            
            return cell
            
        }
        else{
            cell.menuname.text = itemt!.menu_frappuccino[indexPath.row].name
            cell.coolprice.text = itemt!.menu_frappuccino[indexPath.row].coolprice
            cell.hotprice.text = itemt!.menu_frappuccino[indexPath.row].hotprice
            
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

    //셀 개수
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemt!.signature.count
    }
    
    //셀에 데이터 넣기
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SignatureMenu", for: indexPath) as! SignatureMenuCollectionViewCell
        
        //let menu = itemt!.signatureMenu[indexPath.item]
        cell.pictureimageview.image = itemt!.signature[indexPath.item].picture
        cell.namelabel.text = itemt!.signature[indexPath.item].name
        cell.pricelabel.text = itemt!.signature[indexPath.item].price
        
        
        return cell
    }
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
