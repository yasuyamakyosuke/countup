//
//  ViewController.swift
//  Swift5CountUp1
//
//  Created by 泰山恭輔 on 2020/11/20.
//

import UIKit

class ViewController: UIViewController {

        
    @IBOutlet weak var countlabel: UILabel!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //ラベルの文字を0と表示したい//String型
        countlabel.text = "0"
    }

    
    
    @IBAction func plus(_ sender: Any) {
        
        //カウントアップさせたい
        count = count + 1
        
        //ラベルに文字を反映させたい(数字)
        countlabel.text = String(count)
        
        //もし10以上になったら、色を黄色に変更したい
        if count  >= 10{
            
            changeTextColor()
        }
    }
    
    @IBAction func minus(_ sender: Any) {
        
        //カウントダウンさせたい
        count = count - 1
        
        //ラベルに文字を反映させたい(数字)
        countlabel.text = String(count)
        //もし0以下になったら、色を白に変更したい
        if count  <= 0{
            
            resetColor()
        }
    }
    
    //新しくメソッドが作成された
    func changeTextColor(){
        
        countlabel.textColor = .yellow
        
    }
    
    func resetColor(){
        
        countlabel.textColor = .white
        
    }
}

