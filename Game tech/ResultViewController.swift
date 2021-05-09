//
//  ResultViewController.swift
//  Game tech
//
//  Created by Yuma Ikeda on 2021/05/06.
//

import UIKit

class ResultViewController: UIViewController {
    
    //乱数を入れるためのInt型の変数を用意
    var number: Int!
    //背景画像とモンスターの画像を表示するためのImageViewを用意
    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var monsterImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //0~9までのランダムな数を発生させる
        number = Int.random(in:0...9)
    
        if number == 9{//激レアモンスター
            monsterImageView.image = UIImage(named: "itohara5.jpg")
            backgroundImageView.image = UIImage(named:"baseballbackground.jpg")
        }else if number == 8{//レアモンスター
            monsterImageView.image = UIImage(named: "gunkel4.jpg")
            backgroundImageView.image = UIImage(named:"haikei.red.jpg")
        }else if number == 7{
            monsterImageView.image = UIImage(named: "satoteru4.jpg")
            backgroundImageView.image = UIImage(named:"haikei.red.jpg")
        }else if number == 6{
            monsterImageView.image = UIImage(named: "chikamoto4.jpg")
            backgroundImageView.image = UIImage(named:"haikei.red.jpg")
        }else if number == 5{
            monsterImageView.image = UIImage(named: "kinami4.jpg")
            backgroundImageView.image = UIImage(named:"haikei.red.jpg")
        }else if number == 4{//ノーマルモンスター
            monsterImageView.image = UIImage(named: "sakamoto3.jpg")
            backgroundImageView.image = UIImage(named:"baseballspiritback.jpg")
        }else if number == 3{
            monsterImageView.image = UIImage(named: "fujinami3.jpg")
            backgroundImageView.image = UIImage(named:"baseballspiritback.jpg")
        }else if number == 2{
            monsterImageView.image = UIImage(named: "itoi2.jpg")
            backgroundImageView.image = UIImage(named:"baseballspiritback.jpg")
        }else if number == 1{
            monsterImageView.image = UIImage(named: "oyama2.jpg")
            backgroundImageView.image = UIImage(named:"baseballspiritback.jpg")
        }else if number == 0{
            monsterImageView.image = UIImage(named: "marte2.jpg")
            backgroundImageView.image = UIImage(named:"baseballspiritback.jpg")
        }
    }
        
        @IBAction func back(){
            self.dismiss(animated: true, completion: nil)
        }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        let animation = CABasicAnimation(keyPath: "transform")
        animation.fromValue = NSNumber(value: 0)//アニメーション開始の数値
        animation.toValue = NSNumber(value: 2 * Double.pi )//アニメーション終了時の数値
        animation.valueFunction = CAValueFunction(name: CAValueFunctionName.rotateZ)//z軸を中心としたアニメーション
        animation.duration = 0.3//速度
        animation.repeatCount = 1
        
       monsterImageView.layer.add(animation, forKey: nil)
   
        
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


}
