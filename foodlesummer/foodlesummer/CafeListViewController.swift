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
    
    
    //메뉴 데이터(커피, 차, 프라푸치노)
    let data_coffee_1 = [
        Menu(name: "아메리카노", hotprice: "3500", coolprice: "4000"),
        Menu(name: "카페라떼", hotprice: "4000", coolprice: "4200"),
        Menu(name: "바닐라라떼", hotprice: "4500", coolprice: "4700"),
        Menu(name: "카페모카", hotprice: "4500", coolprice: "4600"),
        Menu(name: "카라멜마끼야또", hotprice: "4300", coolprice: "4300"),
        Menu(name: "녹차라떼", hotprice: "4000", coolprice: "4200"),
        ]
    
    let data_tea_1 = [
        Menu(name: "스프링", hotprice : "8000", coolprice: "8000"),
        Menu(name: "팔레르모", hotprice : "8000", coolprice: "8000"),
        Menu(name: "블랙로즈", hotprice: "8000", coolprice: "8000"),
        Menu(name: "푸쉬킨", hotprice: "8000", coolprice: "8000"),
        Menu(name: "유자차", hotprice: "5000", coolprice: "5000"),
        Menu(name: "생강차", hotprice: "5000", coolprice: "5000"),
        Menu(name: "레몬차", hotprice: "5000", coolprice: "5000"),
        Menu(name: "대추차", hotprice: "5000", coolprice: "5000"),
        ]
    
    let data_frappuccino_1 = [
        Menu(name: "자바칩 프라푸치노", hotprice : "4500", coolprice: "5000"),
        Menu(name: "초코칩 프라푸치노", hotprice : "4500", coolprice: "5000"),
        Menu(name: "녹차 프라푸치노", hotprice : "4000", coolprice: "4500"),
        ]
    
    let data_coffee_2 = [
        Menu(name: "에스프레소", hotprice: "3000", coolprice: "3500"),
        Menu(name: "아메리카노", hotprice: "3000", coolprice: "3500"),
        Menu(name: "더치커피", hotprice: "3500", coolprice: "3500"),
        Menu(name: "카페라떼", hotprice: "3500", coolprice: "3500"),
        Menu(name: "카푸치노", hotprice: "3500", coolprice: "4000"),
        Menu(name: "카페 비엔나", hotprice: "3800", coolprice: "4000"),
        Menu(name: "카페 깔루아", hotprice: "5000", coolprice: "5500"),
        Menu(name: "루첸 카푸치노", hotprice: "3800", coolprice: "4000"),
        Menu(name: "소이라떼", hotprice: "3800", coolprice: "4000"),
        ]
    
    let data_tea_2 = [
        Menu(name: "얼그레이", hotprice : "4000", coolprice: "4500"),
        Menu(name: "유자차", hotprice : "3500", coolprice: "4000"),
        Menu(name: "녹차", hotprice: "3800", coolprice: "4000"),
        Menu(name: "라벤더", hotprice: "4000", coolprice: "4000"),
        Menu(name: "캐모마일", hotprice: "3800", coolprice: "4000"),
        Menu(name: "페퍼민트", hotprice: "4500", coolprice: "4500"),
        Menu(name: "히비스커스", hotprice: "4200", coolprice: "4200"),
        Menu(name: "홍차", hotprice: "3500", coolprice: "4000"),
        ]
    
    let data_frappuccino_2 = [
        Menu(name: "카라멜 프라푸치노", hotprice : "5600", coolprice: "5600"),
        Menu(name: "진저 쿠키 프라푸치노", hotprice : "6800", coolprice: "6800"),
        Menu(name: "페퍼민트 모카 프라푸치노", hotprice : "6600", coolprice: "6600"),
        ]
    
    let data_coffee_3 = [
        Menu(name: "아메리카노", hotprice: "3000", coolprice: "3500"),
        Menu(name: "카푸치노", hotprice: "4000", coolprice: "4200"),
        Menu(name: "카페모카", hotprice: "4500", coolprice: "4700"),
        Menu(name: "카라멜 마끼야또", hotprice: "4500", coolprice: "4600"),
        Menu(name: "녹차라떼", hotprice: "4500", coolprice: "4500"),
        Menu(name: "고구마라떼", hotprice: "4500", coolprice: "4500"),
        ]
    
    let data_tea_3 = [
        Menu(name: "레몬티", hotprice : "4000", coolprice: "4500"),
        Menu(name: "자몽티", hotprice : "3500", coolprice: "4000"),
        Menu(name: "대추차", hotprice: "4200", coolprice: "4200"),
        Menu(name: "오미자차", hotprice: "4000", coolprice: "4000"),
        Menu(name: "생강차", hotprice: "3900", coolprice: "3900"),
        ]
    
    let data_frappuccino_3 = [
        Menu(name: "다크 모카 프라푸치노", hotprice : "5000", coolprice: "5000"),
        Menu(name: "화이트 초콜릿 프라푸치노", hotprice : "4500", coolprice: "5000"),
        Menu(name: "에스프레소 프라푸치노", hotprice : "4000", coolprice: "4500"),
        Menu(name: "카라멜 프라푸치노", hotprice : "5000", coolprice: "5000"),
        ]
    
    let data_coffee_4 = [
        Menu(name: "아메리카노", hotprice: "3500", coolprice: "4000"),
        Menu(name: "에스프레소", hotprice: "3000", coolprice: "3200"),
        Menu(name: "헤이즐넛 아메리카노", hotprice: "4000", coolprice: "4200"),
        Menu(name: "카푸치노", hotprice: "4500", coolprice: "4600"),
        Menu(name: "카라멜 마끼야또", hotprice: "4500", coolprice: "4500"),
        Menu(name: "카페라떼", hotprice: "4500", coolprice: "4500"),
        Menu(name: "아포카토", hotprice: "5000", coolprice: "5500"),
        Menu(name: "고구마라떼", hotprice: "4000", coolprice: "4200"),
        ]
    
    let data_tea_4 = [
        Menu(name: "캐모마일", hotprice : "2500", coolprice: "3000"),
        Menu(name: "히비스커스", hotprice : "2500", coolprice: "3000"),
        Menu(name: "페퍼민트", hotprice : "2500", coolprice: "3000"),
        Menu(name: "모과차", hotprice : "2500", coolprice: "3000"),
        Menu(name: "유과차", hotprice : "2500", coolprice: "3000"),
        Menu(name: "녹차", hotprice : "2000", coolprice: "2500"),
        ]
    
    let data_frappuccino_4 = [
        Menu(name: "크린티 크림 프라푸치노", hotprice : "6000", coolprice: "6000"),
        Menu(name: "딸기 크림 프라푸치노", hotprice : "6600", coolprice: "6600"),
        Menu(name: "카라멜 크림 프라푸치노", hotprice : "6100", coolprice: "6100"),
        ]
    
    let data_coffee_5 = [
        Menu(name: "아메리카노", hotprice: "3500", coolprice: "4000"),
        Menu(name: "카푸치노", hotprice: "4500", coolprice: "5000"),
        Menu(name: "바닐라 라떼", hotprice: "4800", coolprice: "5300"),
        Menu(name: "헤이즐넛 라떼", hotprice: "4800", coolprice: "5300"),
        Menu(name: "아이리쉬 라떼", hotprice: "4800", coolprice: "5300"),
        Menu(name: "스위스 모카 라떼", hotprice: "4800", coolprice: "4800"),
        Menu(name: "더치커피", hotprice: "6000", coolprice: "6000"),
        Menu(name: "더치 라떼", hotprice: "6500", coolprice: "6500"),
        ]
    
    let data_tea_5 = [
        Menu(name: "자몽차", hotprice : "3500", coolprice: "3500"),
        Menu(name: "레몬차", hotprice : "3500", coolprice: "4000"),
        Menu(name: "유자차", hotprice : "3500", coolprice: "3500"),
        Menu(name: "청포도차", hotprice : "2500", coolprice: "3000"),
        Menu(name: "대추차", hotprice : "3500", coolprice: "3500"),
        Menu(name: "생강차", hotprice : "3500", coolprice: "3500"),
        ]
    
    let data_frappuccino_5 = [
        Menu(name: "커피 프라푸치노", hotprice : "4500", coolprice: "5000"),
        Menu(name: "카라멜 프라푸치노", hotprice : "4500", coolprice: "5000"),
        Menu(name: "바닐라 프라푸치노", hotprice : "4000", coolprice: "4500"),
        ]
    
    let data_coffee_6 = [
        Menu(name: "아메리카노", hotprice: "3500", coolprice: "4000"),
        Menu(name: "카페라떼", hotprice: "4000", coolprice: "4200"),
        Menu(name: "바닐라라떼", hotprice: "4500", coolprice: "4700"),
        Menu(name: "카페모카", hotprice: "4500", coolprice: "4600"),
        Menu(name: "카라멜마끼야또", hotprice: "4300", coolprice: "4300"),
        Menu(name: "녹차라떼", hotprice: "4000", coolprice: "4200"),
        ]
    
    let data_tea_6 = [
        Menu(name: "다즐링", hotprice : "4800", coolprice: "4800"),
        Menu(name: "우바", hotprice : "4800", coolprice: "4800"),
        Menu(name: "기문", hotprice : "4800", coolprice: "4800"),
        Menu(name: "얼그레이", hotprice : "4800", coolprice: "4800"),
        Menu(name: "레이디그레이", hotprice : "4800", coolprice: "4800"),
        Menu(name: "블랙 로얄 밀크", hotprice : "4900", coolprice: "4900"),
        Menu(name: "블랙 로얄 차이", hotprice : "4900", coolprice: "4900"),
        ]
    
    let data_frappuccino_6 = [
        Menu(name: "망고 프라푸치노", hotprice : "5000", coolprice: "5500"),
        Menu(name: "딸기레몬 프라푸치노", hotprice : "5000", coolprice: "5000"),
        Menu(name: "라즈베리 프라푸치노", hotprice : "5500", coolprice: "5500"),
        ]
    
    let data_coffee_7 = [
        Menu(name: "에스프레소", hotprice: "2000", coolprice: "2500"),
        Menu(name: "에스프레소 콘파냐", hotprice: "3000", coolprice: "3500"),
        Menu(name: "아메리카노", hotprice: "2500", coolprice: "3000"),
        Menu(name: "카페라떼", hotprice: "2800", coolprice: "3500"),
        Menu(name: "바닐라 카페라떼", hotprice: "3300", coolprice: "3500"),
        Menu(name: "녹차라떼", hotprice: "3500", coolprice: "4200"),
        Menu(name: "고구마라떼", hotprice: "3800", coolprice: "4000"),
        Menu(name: "카페모카", hotprice: "3500", coolprice: "4000"),
        Menu(name: "카푸치노", hotprice: "3200", coolprice: "3500"),
        Menu(name: "바닐라 카푸치노", hotprice: "3800", coolprice: "4000"),
        ]
    
    let data_tea_7 = [
        Menu(name: "자몽차", hotprice : "4500", coolprice: "4500"),
        Menu(name: "레몬차", hotprice : "4500", coolprice: "4500"),
        Menu(name: "유자차", hotprice : "4800", coolprice: "4800"),
        Menu(name: "밀크티", hotprice : "4500", coolprice: "4500"),
        Menu(name: "페퍼민트", hotprice : "3000", coolprice: "3000"),
        Menu(name: "캐모마일", hotprice : "3000", coolprice: "3000"),
        Menu(name: "얼그레이", hotprice : "3500", coolprice: "3500"),
        ]
    
    let data_frappuccino_7 = [
        Menu(name: "커피 프라푸치노", hotprice : "4500", coolprice: "5000"),
        Menu(name: "카라멜 프라푸치노", hotprice : "4500", coolprice: "5000"),
        Menu(name: "에스프레소 프라푸치노", hotprice : "4000", coolprice: "4500"),
        ]
    
    let data_coffee_8 = [
        Menu(name: "에스프레소", hotprice: "4000", coolprice: "-"),
        Menu(name: "아메리카노", hotprice: "4000", coolprice: "4500"),
        Menu(name: "카페라떼", hotprice: "4500", coolprice: "5000"),
        Menu(name: "시나몬드라이카푸치노", hotprice: "5000", coolprice: "5500"),
        Menu(name: "바닐라라떼", hotprice: "5000", coolprice: "5500"),
        Menu(name: "카페모카", hotprice: "5500", coolprice: "6000"),
        Menu(name: "카라멜마끼아또", hotprice: "5500", coolprice: "6000"),
        Menu(name: "티라미수라떼", hotprice: "6500", coolprice: "7000"),
        Menu(name: "더치커피", hotprice: "-", coolprice: "6000"),
        ]
    
    let data_tea_8 = [
        Menu(name: "카밀레", hotprice : "4000", coolprice: "4500"),
        Menu(name: "로이보스", hotprice : "4000", coolprice: "4000"),
        Menu(name: "페퍼민트", hotprice : "4000", coolprice: "4000"),
        Menu(name: "오리엔트 미스터리", hotprice : "4000", coolprice: "4000"),
        Menu(name: "터키쉬 사과", hotprice : "4000", coolprice: "4000"),
        ]
    
    let data_frappuccino_8 = [
        Menu(name: "토피넛 프라푸치노", hotprice : "4500", coolprice: "5000"),
        Menu(name: "페퍼민트모카 프라푸치노", hotprice : "4500", coolprice: "5000"),
        Menu(name: "자바칩 프라푸치노", hotprice : "4000", coolprice: "4500"),
        ]
    
    let data_coffee_9 = [
        Menu(name: "아메리카노", hotprice: "3500", coolprice: "4000"),
        Menu(name: "에스프레소", hotprice: "3000", coolprice: "-"),
        Menu(name: "에스프레소 콘파냐", hotprice: "3500", coolprice: "-"),
        Menu(name: "카페비엔나", hotprice: "4000", coolprice: "-"),
        Menu(name: "카페 헤이즐럿", hotprice: "3500", coolprice: "4000"),
        Menu(name: "카페라떼", hotprice: "3500", coolprice: "4200"),
        Menu(name: "카라멜카페라떼", hotprice: "3500", coolprice: "4000"),
        Menu(name: "바닐라카페라떼", hotprice: "3500", coolprice: "4500"),
        Menu(name: "카라멜모카", hotprice: "4000", coolprice: "4500"),
        Menu(name: "카페모카", hotprice: "4000", coolprice: "4500"),
        Menu(name: "카라멜마끼야또", hotprice: "4000", coolprice: "4000"),
        Menu(name: "아포카토", hotprice: "-", coolprice: "4500"),
        Menu(name: "더치커피", hotprice: "4000", coolprice: "4000"),
        ]
    
    let data_tea_9 = [
        Menu(name: "홍차", hotprice : "3000", coolprice: "3000"),
        Menu(name: "허브차", hotprice : "3000", coolprice: "3000"),
        Menu(name: "당근차", hotprice : "3000", coolprice: "3000"),
        Menu(name: "레몬차", hotprice : "3000", coolprice: "3000"),
        Menu(name: "오미자차", hotprice : "3000", coolprice: "3000"),
        Menu(name: "유자차", hotprice : "3000", coolprice: "3000"),
        Menu(name: "오미자레몬차", hotprice : "3000", coolprice: "3000"),
        Menu(name: "율무차", hotprice : "3000", coolprice: "3000"),
        ]
    
    let data_frappuccino_9 = [
        Menu(name: "에스프레소 프라푸치노", hotprice : "4500", coolprice: "5000"),
        Menu(name: "모카 프라푸치노", hotprice : "4500", coolprice: "5000"),
        Menu(name: "토피 넛 프라푸치노", hotprice : "4000", coolprice: "4500"),
        ]
    
    let data_coffee_10 = [
        Menu(name: "아메리카노", hotprice: "3500", coolprice: "4000"),
        Menu(name: "에스프레소", hotprice: "-", coolprice: "2500"),
        Menu(name: "카페라떼", hotprice: "3300", coolprice: "3700"),
        Menu(name: "카푸치노", hotprice: "3300", coolprice: "3700"),
        Menu(name: "카페모카", hotprice: "3900", coolprice: "4400"),
        Menu(name: "카라멜마끼야또", hotprice: "3900", coolprice: "4300"),
        Menu(name: "아포카토", hotprice: "4000", coolprice: "4500"),
        ]
    
    let data_tea_10 = [
        Menu(name: "얼그레이", hotprice : "4000", coolprice: "4500"),
        Menu(name: "유자차", hotprice : "3500", coolprice: "4000"),
        Menu(name: "오미자차", hotprice : "3000", coolprice: "3000"),
        Menu(name: "유자차", hotprice : "3000", coolprice: "3000"),
        Menu(name: "오미자레몬차", hotprice : "3000", coolprice: "3000"),
        Menu(name: "율무차", hotprice : "3000", coolprice: "3000"),
        ]
    
    let data_frappuccino_10 = [
        Menu(name: "아포카토 프라푸치노", hotprice : "4500", coolprice: "5000"),
        Menu(name: "바닐라크림 프라푸치노", hotprice : "4500", coolprice: "5000"),
        Menu(name: "녹차크림 프라푸치노", hotprice : "4000", coolprice: "4500"),
        ]
    
    
    //시그니처 메뉴(배열에 메뉴 추가하면 콜렉션 뷰에 추가됨)
    var signatureMenu_1 = [
        Signature(name : "포멜로 주스", picture : UIImage(named:"signature_1")! , price : "5000원"),
        Signature(name : "코코넛 워터", picture :  UIImage(named:"signature_2")!, price : "4800원"),
        Signature(name : "수박 주스", picture : UIImage(named:"signature_2")! , price : "2000원")
    ]
    
    var signatureMenu_2 = [
        Signature(name : "카페 로자", picture : UIImage(named:"signature_2")!, price : "5000원"),
        Signature(name : "카페 얼그레이", picture : UIImage(named:"signature_2")!, price : "5200원"),
        Signature(name : "카페 오롱", picture : UIImage(named:"signature_2")!, price : "3500원")
    ]
    var signatureMenu_3 = [
        Signature(name : "카페 마살라", picture : UIImage(named:"signature_2")!, price : "4000원"),
        Signature(name : "카페 진저", picture : UIImage(named:"signature_2")!, price : "4800원"),
        Signature(name : "카페 트러플", picture : UIImage(named:"signature_2")!, price : "6000원")
    ]
    var signatureMenu_4 = [
        Signature(name : "비타파인애플 라떼", picture : UIImage(named:"signature_2")!, price : "5200원"),
        Signature(name : "비타민트", picture : UIImage(named:"signature_2")!, price : "5500원"),
        Signature(name : "인퓨징 워터", picture : UIImage(named:"signature_2")!, price : "5000원")
    ]
    var signatureMenu_5 = [
        Signature(name : "메리 초코", picture : UIImage(named:"signature_2")!, price : "5300원"),
        Signature(name : "메리 치즈", picture : UIImage(named:"signature_2")!, price : "4000원"),
        Signature(name : "메리 망고", picture : UIImage(named:"signature_2")!, price : "5300원")
    ]
    var signatureMenu_6 = [
        Signature(name : "복분자 요거트", picture : UIImage(named:"signature_2")!, price : "4800원"),
        Signature(name : "쑥떡쑥떡 빙수", picture : UIImage(named:"signature_2")!, price : "4800원"),
        Signature(name : "인절미 라떼", picture : UIImage(named:"signature_2")!, price : "5000원")
    ]
    var signatureMenu_7 = [
        Signature(name : "수박 스무디", picture : UIImage(named:"signature_2")!, price : "4800원"),
        Signature(name : "요거트 쉐이크", picture : UIImage(named:"signature_2")!, price : "5200원"),
        Signature(name : "메리 수박", picture : UIImage(named:"signature_2")!, price : "3500원")
    ]
    var signatureMenu_8 = [
        Signature(name : "당근 주스", picture : UIImage(named:"signature_2")!, price : "3500원"),
        Signature(name : "크림 더치 커피", picture : UIImage(named:"signature_2")!, price : "4800원"),
        Signature(name : "수프리모", picture : UIImage(named:"signature_2")!, price : "3500원")
    ]
    var signatureMenu_9 = [
        Signature(name : "플랫화이트", picture : UIImage(named:"signature_2")!, price : "4800원"),
        Signature(name : "비엔나", picture : UIImage(named:"signature_2")!, price : "4800원"),
        Signature(name : "시그니처 초코", picture : UIImage(named:"signature_2")!, price : "4800원")
    ]
    var signatureMenu_10 = [
        Signature(name : "메가톤", picture : UIImage(named:"signature_2")!, price : "5000원"),
        Signature(name : "애플시나몬", picture : UIImage(named:"signature_2")!, price : "5000원"),
        Signature(name : "피스타치오", picture : UIImage(named:"signature_2")!, price : "5000원")
    ]
    
    var items: [Cafe] = []
    
    
    
    
    
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
            let detailVC = segue.destination.childViewControllers[0] as? CafeDetailViewController,
            let cell = sender as? UITableViewCell,
            let index = self.tableView.indexPath(for: cell)
            {
            let item = items[index.row]
            detailVC.itemt = item }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        items = [
            Cafe(cafeNames: "트리아농",cafeImages: "cafe0",
                 cafeHour: "매일 09:00 - 22:00 일요일 휴무",cafeAddress: "서울 강남구 학동로59길 43", cafeWifi : false, cafeToilet : true, cafeSmoking : true, cafeParking : true, rate : 3.5, menu_coffee : data_coffee_1 , menu_tea : data_tea_1 , menu_frappuccino : data_frappuccino_1 , signature : signatureMenu_1, cafeInfoImage : ["cafe_info_1", "cafe_info_2", "cafe_info_3"]),
            Cafe (cafeNames: "알베르",cafeImages: "cafe1",
                  cafeHour: "매일 11:00 - 23:00",cafeAddress: "서울 강남구 강남대로102길 34", cafeWifi : false, cafeToilet : false, cafeSmoking : false, cafeParking : true, rate : 4.0, menu_coffee : data_coffee_2,menu_tea : data_tea_2 , menu_frappuccino : data_frappuccino_2, signature : signatureMenu_2, cafeInfoImage : ["cafe_info_4", "cafe_info_5", "cafe_info_6"]),
            Cafe (cafeNames: "이디야커피랩",cafeImages: "cafe2",
                  cafeHour: "매일 07:30 - 02:00",cafeAddress: "서울 강남구 논현로 636", cafeWifi : false, cafeToilet : false, cafeSmoking : true, cafeParking : true, rate : 2.5,menu_coffee : data_coffee_3,menu_tea : data_tea_3 , menu_frappuccino : data_frappuccino_3, signature : signatureMenu_3, cafeInfoImage : ["cafe_info_7","cafe_info_8","cafe_info_9"]),
            Cafe (cafeNames: "오아시스",cafeImages: "cafe3",
                  cafeHour: "평일 09:00 - 20:00",cafeAddress: "서울 강남구 도산대로55길 20", cafeWifi : true, cafeToilet : false, cafeSmoking : true, cafeParking : false, rate : 5.0,menu_coffee : data_coffee_4,menu_tea : data_tea_4 , menu_frappuccino : data_frappuccino_4, signature : signatureMenu_4, cafeInfoImage : ["cafe_info_10","cafe_info_11","cafe_info_12"]),
            Cafe (cafeNames: "미엘",cafeImages: "cafe4",
                  cafeHour: "매일 11:00 - 24:00",cafeAddress: "서울 강남구 도산대로67길 13-12", cafeWifi : true, cafeToilet : true, cafeSmoking : false, cafeParking : false, rate : 5.0,menu_coffee : data_coffee_5,menu_tea : data_tea_5 , menu_frappuccino : data_frappuccino_5, signature : signatureMenu_5, cafeInfoImage : ["cafe_info_13","cafe_info_14","cafe_info_15"]),
            Cafe (cafeNames: "cafe_the_healing",cafeImages: "cafe5",
                  cafeHour: "09:00 ~ 21:00",cafeAddress: "서울 광진구 능동로11길 10", cafeWifi : false, cafeToilet : false, cafeSmoking : true, cafeParking : true, rate : 5.0,menu_coffee : data_coffee_6,menu_tea : data_tea_6 , menu_frappuccino : data_frappuccino_6, signature : signatureMenu_6, cafeInfoImage : ["cafe_info_16","cafe_info_17","cafe_info_18"]),
            Cafe (cafeNames: "Less is More",cafeImages: "cafe6",
                  cafeHour: "08:00 ~ 22:00",cafeAddress: "서울 광진구 동일로20길 89", cafeWifi : true, cafeToilet : false, cafeSmoking : false, cafeParking : true, rate : 5.0,menu_coffee : data_coffee_7,menu_tea : data_tea_7 , menu_frappuccino : data_frappuccino_7, signature : signatureMenu_7, cafeInfoImage : ["cafe_info_19","cafe_info_20","cafe_info_21"]),
            Cafe (cafeNames: "103 express",cafeImages: "cafe7",
                  cafeHour: "08:00 ~ 18:00",cafeAddress: "서울 광진구 능동로13길 23", cafeWifi : false, cafeToilet : false, cafeSmoking : false, cafeParking : false, rate : 5.0,menu_coffee : data_coffee_8,menu_tea : data_tea_8 , menu_frappuccino : data_frappuccino_8, signature : signatureMenu_8, cafeInfoImage : ["cafe_info_22","cafe_info_23","cafe_info_24"]),
            Cafe (cafeNames: "Cafe_be_Happy",cafeImages: "cafe8",
                  cafeHour: "09:00 ~ 23:00",cafeAddress: "서울 광진구 동일로22길", cafeWifi : false, cafeToilet : false, cafeSmoking : true, cafeParking : false, rate : 5.0,menu_coffee : data_coffee_9,menu_tea : data_tea_9 , menu_frappuccino : data_frappuccino_9, signature : signatureMenu_9, cafeInfoImage : ["cafe_info_25","cafe_info_26","cafe_info_27"]),
            Cafe (cafeNames: "Silverlick",cafeImages: "cafe9",
                  cafeHour: "08:00 ~ 24:00",cafeAddress: "서울 광진구 능동로50길 9", cafeWifi : false, cafeToilet : false, cafeSmoking : false, cafeParking : false, rate : 5.0,menu_coffee : data_coffee_10,menu_tea : data_tea_10 , menu_frappuccino : data_frappuccino_10, signature : signatureMenu_10, cafeInfoImage : ["cafe_info_28","cafe_info_29","cafe_info_30"])
            
        ]

        tableView.delegate = self
        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
