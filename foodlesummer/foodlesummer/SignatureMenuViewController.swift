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


class SignatureMenuViewController: UIViewController, UICollectionViewDataSource {
    
    var signatureMenu = [
        Signature(name : "포멜로 주스", picture : UIImage(named: "signature_1")!, price : "5000원"),
        Signature(name : "코코넛 워터", picture : UIImage(named: "signature_2")!, price : "4800원")
    ]
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return signatureMenu.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SignatureMenu", for: indexPath) as! SignatureMenuCollectionViewCell
        
        let menu = signatureMenu[indexPath.item]
        cell.pictureimageview.image = menu.picture
        cell.namelabel.text = menu.name
        cell.pricelabel.text = menu.price
        
        
        return cell
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
