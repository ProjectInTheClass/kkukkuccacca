//
//  AlertPracticeViewController.swift
//  foodlesummer
//
//  Created by 김태현 on 2018. 8. 3..
//  Copyright © 2018년 김태현. All rights reserved.
//

import UIKit

class AlertPracticeViewController: UIViewController {
    
    @IBAction func showAlert(_ sender: Any) {
        let dialog = UIAlertController(title: "제목", message: "메세지", preferredStyle: .alert)
        
        //취소버튼
        let cancelAction = UIAlertAction(title: "취소", style: .cancel , handler: nil)
        dialog.addAction(cancelAction)
        
        //확인버튼
        let okAction = UIAlertAction(title: "확인", style: .default) {(action) in
            if let textFields = dialog.textFields,
            textFields.count > 0,
                let password = textFields[0].text {
                print("확인 누름 \(password)")
            }
        }
        dialog.addAction(okAction)
        
        //텍스트입력
        dialog.addTextField{ (textField) in
            textField.keyboardType = .numberPad
            textField.isSecureTextEntry = true
        }
        
        self.present(dialog, animated: true, completion: nil)
        
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
