//
//  ViewController.swift
//  Mangkkong
//
//  Created by 김호중 on 01/10/2018.
//  Copyright © 2018 김호중. All rights reserved.
//

import UIKit
import KakaoOpenSDK


class ViewController: UIViewController {

    @IBOutlet weak var name: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
    
    @IBAction func kakaologinone(_ sender: Any) {
        let sessionone = KOSession.shared()
        //세션완성
        if let s = sessionone {
            //이전 열린 세션 닫기
            if s.isOpen() {
                s.close()
            }
            s.open(completionHandler: { (error) in
                // 에러가 없으면
                if error == nil {
                    print("No error")
                    //login 성공
                    if s.isOpen() {
                        print("Success")
                    }
                        //login 실패
                    else{
                        print("Fail")
                    }
                }
                else {
                    print("Error login: \(error!)")
                }
            })
        }
            //세션 실패
        else {
            print("Something wrong")
        }
    }
    
    
    
}

