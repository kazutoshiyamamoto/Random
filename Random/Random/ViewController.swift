//
//  ViewController.swift
//  Random
//
//  Created by home on 2018/03/10.
//  Copyright © 2018年 Swift-beginners. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // ラベルのプロパティ宣言
    @IBOutlet weak var myLabel: UILabel!
    // タップボタンのプロパティ宣言
    @IBOutlet weak var tapButtonOutlet: UIButton!
    
    // 数値をランダムに算出
    var randomNum = UInt32(arc4random_uniform(40)) + 10
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 残りタップ回数の表示
        myLabel.text = "残り\(randomNum)回タップしてください"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func tapButton(_ sender: Any) {
        // 残り回数の表示
        randomNum -= 1
        myLabel.text = "残り\(randomNum)回タップしてください"
        
        // 残り回数が0ならメッセージをcountLabelに表示
        if randomNum == 0 {
            myLabel.text = "完了です！"
        // タップボタン無効化
        tapButtonOutlet.isEnabled = false
            
        // ページ移動のテスト
        // 移動先のビューコントローラを参照する
        let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "testPage")
        // トランジションの映像効果を指定する
        nextVC?.modalTransitionStyle = .coverVertical
        // シーンを移動する
        present(nextVC!, animated: true, completion: nil)
        }
    }
}


