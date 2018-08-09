//
//  modal.swift
//  foodlesummer
//
//  Created by 김태현 on 2018. 8. 4..
//  Copyright © 2018년 김태현. All rights reserved.
//

import Foundation

import UIKit

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
    

    var menu_coffee : [Menu]
    var menu_tea : [Menu]
    var menu_frappuccino : [Menu]
    
    
    var signature : [Signature]
}

struct Signature {
    var name : String
    var picture : UIImage
    var price : String
}

struct Menu {
    var name : String
    var hotprice : String
    var coolprice : String
}



struct Review{
    var date: String
    var review: String
    var reviewRate: Double
    var nickName: String
    var userImage: String
}



