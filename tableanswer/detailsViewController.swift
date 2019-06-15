//
//  detailsViewController.swift
//  tableanswer
//
//  Created by 細川聖矢 on 2019/06/11.
//  Copyright © 2019 Seiya. All rights reserved.
//

import UIKit

class detailsViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        WhichFood()
        WhichExplain1()
        WhichExplain2()
        WhichImage()
        
        detailLabel.text = titleLabel
        detailText.text = explainText
        explain1Label.text = label1
        explain2Label.text = label2
        
        foodImage.image = image
        
    }
    
    //写真を入れる配列
    var foodImageArray : [[UIImage]] = [[]]
    var foodImageCatArray : [[UIImage]] = [[]]
    
    //写真を入れる箱
    var image = UIImage(named: "")
    
    //テキストフィールドに入れる値を配列にする
    var textArray:[[String]] = [["犬腎臓1","腎臓2","腎臓3","腎臓4"],["犬心臓1","心臓2","心臓3","心臓4"],["犬肝臓1","肝臓2","肝臓3","肝臓4"],["犬皮膚1","皮膚2","皮膚3","皮膚4","皮膚5","皮膚6","皮膚7"]]
    
    var textCatArray:[[String]] = [["猫腎臓1","腎臓2","腎臓3","腎臓4"],["猫心臓1","心臓2","心臓3","心臓4"],["猫肝臓1","肝臓2","肝臓3","肝臓4"],["猫皮膚1","皮膚2","皮膚3","皮膚4","皮膚5","皮膚6","皮膚7"]]
    
    var explain1Array:[[String]] = [["犬腎臓説明1","腎臓説明2","腎臓3","腎臓4"],["犬心臓説明1","心臓説明2","心臓3","心臓4"],["犬肝臓1","肝臓2","肝臓3","肝臓4"],["犬皮膚1","皮膚2","皮膚3","皮膚4","皮膚5","皮膚6","皮膚7"]]
    
    var explainCat1Array:[[String]] = [["猫腎臓説明1","腎臓2","腎臓3","腎臓4"],["猫心臓1","心臓説明2","心臓3","心臓4"],["猫肝臓1","肝臓2","肝臓3","肝臓4"],["猫皮膚1","皮膚2","皮膚3","皮膚4","皮膚5","皮膚6","皮膚7"]]
    
    var explain2Array:[[String]] = [["犬腎臓説明1-2","腎臓説明2","腎臓3","腎臓4"],["犬心臓説明1","心臓説明2-2","心臓3","心臓4"],["犬肝臓1","肝臓2","肝臓3","肝臓4"],["犬皮膚1","皮膚2","皮膚3","皮膚4","皮膚5","皮膚6","皮膚7"]]
    
    var explainCat2Array:[[String]] = [["猫腎臓説明1-2","腎臓2","腎臓3","腎臓4"],["猫心臓1","心臓説明2-2","心臓3","心臓4"],["猫肝臓1","肝臓2","肝臓3","肝臓4"],["猫皮膚1","皮膚2","皮膚3","皮膚4","皮膚5","皮膚6","皮膚7"]]
    
    
    //遷移元からのデータを受け取る
    var titleLabel = ""
    
    //セルの何行目をクリックしたかが分かる
    var titleNumber:Int = 0
    
    //どの病気を選んだかが分かる
    var secondFoodNumber:Int = 0
    
    //どの動物を選んだかが分かる
    var secondSpecieNumber:Int = 0
    
    //テキストフィールドに表示する内容を入れる箱
    var explainText = ""
    
    //ラベルの内容
    var label1 = ""
    var label2 = ""
    
    //表示するテキストの場合分け
    func WhichFood(){
        if secondSpecieNumber == 0{
            switch titleNumber {
            case 0:
                explainText = textArray[secondFoodNumber][0]
            case 1:
                explainText = textArray[secondFoodNumber][1]
            case 2:
                explainText = textArray[secondFoodNumber][2]
            case 3:
                explainText = textArray[secondFoodNumber][3]
            default:
                explainText = ""
            }}
        else if secondSpecieNumber == 1{
            switch titleNumber {
            case 0:
                explainText = textCatArray[secondFoodNumber][0]
            case 1:
                explainText = textCatArray[secondFoodNumber][1]
            case 2:
                explainText = textCatArray[secondFoodNumber][2]
            case 3:
                explainText = textCatArray[secondFoodNumber][3]
            default:
                explainText = ""
            }}
    }
    
    func WhichExplain1(){
        if secondSpecieNumber == 0{
            switch titleNumber{
            case 0:
                label1 = explain1Array[secondFoodNumber][0]
            case 1:
                label1 = explain1Array[secondFoodNumber][1]
            case 2:
                label1 = explain1Array[secondFoodNumber][2]
            case 3:
                label1 = explain1Array[secondFoodNumber][3]
            default:
                label1 = ""
            }
        }else if secondSpecieNumber == 1{
            switch titleNumber{
            case 0:
                label1 = explainCat1Array[secondFoodNumber][0]
            case 1:
                label1 = explainCat1Array[secondFoodNumber][1]
            case 2:
                label1 = explainCat1Array[secondFoodNumber][2]
            case 3:
                label1 = explainCat1Array[secondFoodNumber][3]
            default:
                label1 = ""
            }
        }
    }
    
    func WhichExplain2(){
        if secondSpecieNumber == 0{
            switch titleNumber{
            case 0:
                label2 = explain2Array[secondFoodNumber][0]
            case 1:
                label2 = explain2Array[secondFoodNumber][1]
            case 2:
                label2 = explain2Array[secondFoodNumber][2]
            case 3:
                label2 = explain2Array[secondFoodNumber][3]
            default:
                label2 = ""
            }
        }else if secondSpecieNumber == 1{
            switch titleNumber{
            case 0:
                label2 = explainCat2Array[secondFoodNumber][0]
            case 1:
                label2 = explainCat2Array[secondFoodNumber][1]
            case 2:
                label2 = explainCat2Array[secondFoodNumber][2]
            case 3:
                label2 = explainCat2Array[secondFoodNumber][3]
            default:
                label2 = ""
            }
        }
    }
    
    func WhichImage(){
        if secondSpecieNumber == 0{
            switch titleNumber{
            case 0:
                image = UIImage(named: "maron0")
            case 1:
                image = UIImage(named: "maron1")
            case 2:
                image = UIImage(named: "maron0")
            case 3:
                image = UIImage(named: "maron1")
            default:
                image = UIImage(named: "")
            }
        }else if secondSpecieNumber == 1{
            switch titleNumber{
            case 0:
                image = UIImage(named: "maron0")
            case 1:
                image = UIImage(named: "maron1")
            case 2:
                image = UIImage(named: "maron0")
            case 3:
                image = UIImage(named: "maron1")
            default:
                image = UIImage(named: "")
            }
        }
    }
    
    @IBOutlet weak var explain1Label: UILabel!
    
    @IBOutlet weak var explain2Label: UILabel!
    
    
    @IBOutlet weak var detailLabel: UILabel!
    
    @IBOutlet weak var detailText: UITextView!
    
    @IBAction func explainReturnButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
//        let storyboard:UIStoryboard = self.storyboard!
//        let nextView = storyboard.instantiateViewController(withIdentifier: "foodExplain") as! foodExplainViewController
//        self.present(nextView, animated: true, completion: nil)
    }
    @IBOutlet weak var foodImage: UIImageView!
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
