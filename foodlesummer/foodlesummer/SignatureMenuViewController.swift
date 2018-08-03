//
//  SignatureMenuViewController.swift
//  foodlesummer
//
//  Created by 방문사용자 on 2018. 8. 2..
//  Copyright © 2018년 김태현. All rights reserved.
//

import UIKit

struct Signature {
    var name : String
    var picture : UIImage
    var price : String
}


class SignatureMenuViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UITableViewDataSource {
    
    
    ///////////////////여기는 메뉴 테이블 셀/////////////////
    
    struct Menu {
        var name : String
        var hotprice : String
        var coolprice : String
    }
    //메뉴 데이터(커피, 차, 프라푸치노)
    let data_coffee = [
        Menu(name: "아메리카노", hotprice: "3500", coolprice: "4000"),
        Menu(name: "카페라떼", hotprice: "4000", coolprice: "4200"),
        Menu(name: "바닐라라떼", hotprice: "4500", coolprice: "4700"),
        Menu(name: "카페모카", hotprice: "4500", coolprice: "4600"),
        Menu(name: "카라멜마끼야또", hotprice: "4300", coolprice: "4300"),
        Menu(name: "녹차라떼", hotprice: "4000", coolprice: "4200"),
        ]
    
    let data_tea = [
        Menu(name: "얼그레이", hotprice : "4000", coolprice: "4500"),
        Menu(name: "유자차", hotprice : "3500", coolprice: "4000")
    ]
    
    let data_frappuccino = [
        Menu(name: "자바칩 프라푸치노", hotprice : "4500", coolprice: "5000"),
        Menu(name: "초코칩 프라푸치노", hotprice : "4500", coolprice: "5000"),
        Menu(name: "녹차 프라푸치노", hotprice : "4000", coolprice: "4500"),
    ]
    
    //섹션의 개수(커피, 차, 프라푸치노 총 3개)
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    //섹션마다의 셀 개수
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if 0 == section {
            return data_coffee.count
        } else if 1 == section {
            return data_tea.count
        } else {
            return data_frappuccino.count
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
            cell.menuname.text = data_coffee[indexPath.row].name
            cell.coolprice.text = data_coffee[indexPath.row].coolprice
            cell.hotprice.text = data_coffee[indexPath.row].hotprice
        
            return cell} else if indexPath.section == 1 {
            cell.menuname.text = data_tea[indexPath.row].name
            cell.coolprice.text = data_tea[indexPath.row].coolprice
            cell.hotprice.text = data_tea[indexPath.row].hotprice
            
            return cell} else{
            cell.menuname.text = data_frappuccino[indexPath.row].name
            cell.coolprice.text = data_frappuccino[indexPath.row].coolprice
            cell.hotprice.text = data_frappuccino[indexPath.row].hotprice
            
            return cell
            
            
        }
    }
    
    
    
    
    /////////////여기부턴 시그니처 콜렉션 뷰 셀///////////////////////
    //셀 크기 조정하는 부분
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.frame.size.width / 2 - 2
        let height = width * 1.2
        let size = CGSize(width: width, height: height)
        return size
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    //시그니처 메뉴(배열에 메뉴 추가하면 콜렉션 뷰에 추가됨)
    var signatureMenu = [
        Signature(name : "포멜로 주스", picture : UIImage(named: "signature_1")!, price : "5000원"),
        Signature(name : "코코넛 워터", picture : UIImage(named: "signature_2")!, price : "4800원"),
        Signature(name : "수박 주스", picture : UIImage(named: "signature_1")!, price : "2000원")
    ]
    
    //셀 개수
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return signatureMenu.count
    }
    
    //셀에 데이터 넣기
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SignatureMenu", for: indexPath) as! SignatureMenuCollectionViewCell
        
        let menu = signatureMenu[indexPath.item]
        cell.pictureimageview.image = menu.picture
        cell.namelabel.text = menu.name
        cell.pricelabel.text = menu.price
        
        
        return cell
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
