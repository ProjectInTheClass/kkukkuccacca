//
//  modal.swift
//  foodlesummer
//
//  Created by 김태현 on 2018. 8. 4..
//  Copyright © 2018년 김태현. All rights reserved.
//

import Foundation



//구조체 만들기
struct Cafe {
    var cafeNames: String
    var cafeImages: String
    var cafeHour: String
    var cafeAddress: String
    
    var cafeWifi : Bool
    var cafeToilet : Bool
    var cafeSmoking : Bool
    var cafeParking : Bool
    
    var rate : Double
    
    var menu :[[Menu]]
    var signature : [Signature]
}


struct menu {
    var data_coffee: [String]
    var data_tea: [String]
}



struct Review{
    var date: String
    var review: String
    var reviewRate: Double
    var nickName: String
    var userImage: String
}



