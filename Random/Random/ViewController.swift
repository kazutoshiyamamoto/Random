//
//  ViewController.swift
//  Random
//
//  Created by home on 2018/03/10.
//  Copyright © 2018年 Swift-beginners. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    @IBOutlet weak var countLabel: UILabel!
    var countNum = 1

    @IBAction func tapButton(_ sender: Any) {
        // タップした回数をカウント
        countLabel.text = String(countNum)
        countNum += 1
        
        // 数値をランダムに算出
        var randomNum: UInt32 = 0
        randomNum = UInt32(arc4random_uniform(10) + 1)
        print(randomNum)

//        // タップした回数とランダムに算出した数字が同じなら0をcountLabelに表示
//        if countNum == randomNum {
//            countNum = 0
//            countLabel.text = String(countNum)
//        }
//    }
    
    @IBAction func canselButton(_ sender: Any) {
        countNum = 0
        countLabel.text = String(countNum)
    }
}

