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
        WhichExplain()
//        WhichExplain2()
        WhichImage()
        colors()
        
        detailLabel.text = titleLabel
        detailText.text = explainText
        explain1Label.text = label1
        explain2Label.text = label2
        explain3Label.text = label3
        
        foodImage.image = image
        
        backButtonText.setTitleColor(UIColor.black, for: .normal)
        
        //viewの背景色
        colorView.backgroundColor = UIColor.white
        
        //navigationbarの色
        //backGrondColorじゃなくてbarTintColorにする
//        detailNavigationBar.barTintColor = UIColor.init(red: 255/255, green: 85/255, blue: 32/255, alpha: 1.0)/*navigationColor*/
        
        //label1の色
        detailLabel.backgroundColor = UIColor.init(red: 255/255, green: 85/255, blue: 32/255, alpha: 1.0)/*labelOneColor*/
        detailLabel.textColor = UIColor.white
        
        //labelのスタイル
        labelStyle(label: explain1Label)
        labelStyle(label: explain2Label)
        labelStyle(label: explain3Label)
        
//        detailLabel.layer.cornerRadius = 10.0
//        detailLabel.clipsToBounds = true
//        detailLabel.layer.borderColor = UIColor.black.cgColor
//        detailLabel.layer.borderWidth = 0.5
//        
        //イメージビューのスタイル
//        foodImageView.layer.borderWidth = 0.5
//        foodImageView.layer.borderColor = UIColor.black.cgColor
//        foodImageView.layer.cornerRadius = 10
//        foodImageView.layer.masksToBounds = true
        
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
    
    var explain3Array:[[String]] = [["犬腎臓説明1-3","腎臓説明2","腎臓3","腎臓4"],["犬心臓説明1","心臓説明2-2","心臓3","心臓4"],["犬肝臓1","肝臓2","肝臓3","肝臓4"],["犬皮膚1","皮膚2","皮膚3","皮膚4","皮膚5","皮膚6","皮膚7"]]
    
    var explainCat3Array:[[String]] = [["猫腎臓説明1-3","腎臓2","腎臓3","腎臓4"],["猫心臓1","心臓説明2-2","心臓3","心臓4"],["猫肝臓1","肝臓2","肝臓3","肝臓4"],["猫皮膚1","皮膚2","皮膚3","皮膚4","皮膚5","皮膚6","皮膚7"]]
    
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
    var label3 = ""
    
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
    
    func WhichExplain(){
        if secondSpecieNumber == 0{
            switch titleNumber{
            case 0:
                label1 = explain1Array[secondFoodNumber][0]
                label2 = explain2Array[secondFoodNumber][0]
                label3 = explain3Array[secondFoodNumber][0]
            case 1:
                label1 = explain1Array[secondFoodNumber][1]
                label2 = explain2Array[secondFoodNumber][1]
                label3 = explain3Array[secondFoodNumber][1]
            case 2:
                label1 = explain1Array[secondFoodNumber][2]
                label2 = explain2Array[secondFoodNumber][2]
                label3 = explain3Array[secondFoodNumber][2]
            case 3:
                label1 = explain1Array[secondFoodNumber][3]
                label2 = explain2Array[secondFoodNumber][3]
                label3 = explain3Array[secondFoodNumber][3]
            default:
                label1 = ""
                label2 = ""
                label3 = ""
            }
        }else if secondSpecieNumber == 1{
            switch titleNumber{
            case 0:
                label1 = explainCat1Array[secondFoodNumber][0]
                label2 = explainCat2Array[secondFoodNumber][0]
                label3 = explainCat3Array[secondFoodNumber][0]
            case 1:
                label1 = explainCat1Array[secondFoodNumber][1]
                label2 = explainCat2Array[secondFoodNumber][1]
                label3 = explainCat3Array[secondFoodNumber][1]
            case 2:
                label1 = explainCat1Array[secondFoodNumber][2]
                label2 = explainCat2Array[secondFoodNumber][2]
                label3 = explainCat3Array[secondFoodNumber][2]
            case 3:
                label1 = explainCat1Array[secondFoodNumber][3]
                label2 = explainCat2Array[secondFoodNumber][3]
                label3 = explainCat3Array[secondFoodNumber][3]
            default:
                label1 = ""
                label2 = ""
                label3 = ""
            }
        }
    }
    
//    func WhichExplain2(){
//        if secondSpecieNumber == 0{
//            switch titleNumber{
//            case 0:
//                label2 = explain2Array[secondFoodNumber][0]
//            case 1:
//                label2 = explain2Array[secondFoodNumber][1]
//            case 2:
//                label2 = explain2Array[secondFoodNumber][2]
//            case 3:
//                label2 = explain2Array[secondFoodNumber][3]
//            default:
//                label2 = ""
//            }
//        }else if secondSpecieNumber == 1{
//            switch titleNumber{
//            case 0:
//                label2 = explainCat2Array[secondFoodNumber][0]
//            case 1:
//                label2 = explainCat2Array[secondFoodNumber][1]
//            case 2:
//                label2 = explainCat2Array[secondFoodNumber][2]
//            case 3:
//                label2 = explainCat2Array[secondFoodNumber][3]
//            default:
//                label2 = ""
//            }
//        }
//    }
    
//    func WhichImage(){
//        if secondSpecieNumber == 0{
//            switch titleNumber{
//            case 0:
//                image = UIImage(named: "maron0")
//            case 1:
//                image = UIImage(named: "maron1")
//            case 2:
//                image = UIImage(named: "maron0")
//            case 3:
//                image = UIImage(named: "maron1")
//            default:
//                image = UIImage(named: "")
//            }
//        }else if secondSpecieNumber == 1{
//            switch titleNumber{
//            case 0:
//                image = UIImage(named: "maron0")
//            case 1:
//                image = UIImage(named: "maron1")
//            case 2:
//                image = UIImage(named: "maron0")
//            case 3:
//                image = UIImage(named: "maron1")
//            default:
//                image = UIImage(named: "")
//            }
//        }
//
//
//    }
    
    func WhichImage(){
        if secondSpecieNumber == 0{
            switch titleNumber{
            case 0:
                image = UIImage(named: "ph")
            case 1:
                image = UIImage(named: "food\(secondFoodNumber)1")
            case 2:
                image = UIImage(named: "food\(secondFoodNumber)2")
            case 3:
                image = UIImage(named: "food\(secondFoodNumber)3")
            default:
                image = UIImage(named: "")
            }
            
        }else if secondSpecieNumber == 1{
            switch titleNumber{
            case 0:
                image = UIImage(named: "foodCat\(secondFoodNumber)0")
            case 1:
                image = UIImage(named: "foodCat\(secondFoodNumber)1")
            case 2:
                image = UIImage(named: "foodCat\(secondFoodNumber)2")
            case 3:
                image = UIImage(named: "foodCat\(secondFoodNumber)3")
            default:
                image = UIImage(named: "")
        }
        
        }
    }
    
    
    //色の変数
    var greenColor = UIColor(red: 89/255, green: 211/255, blue: 102/255, alpha: 1.0)
    var liteGreenColor = UIColor(red: 89/255, green: 211/255, blue: 102/255, alpha: 0.7)
    var whiteColor = UIColor.white
    
    //色の箱
    var navigationColor = UIColor.white
    var labelOneColor = UIColor.white
    var viewColor = UIColor.white
    
    //色決めをまとめた関数
    func choiceColor(color:UIColor){
        navigationColor = color
        viewColor = color
        labelOneColor = color
    }
    
//    func choiceLiteColor(liteColor:UIColor){
//        labelOneColor = liteColor
//    }
    
    //viewとlabel1とnavibarの色
    func colors() {
        switch secondFoodNumber {
        case 0:
            choiceColor(color: greenColor)
//            choiceLiteColor(liteColor: liteGreenColor)
//            navigationColor = greenColor
//            labelOneColor = greenColor
//            viewColor = greenColor
        default:
            choiceColor(color: UIColor.white)
//            choiceLiteColor(liteColor: UIColor.white)
        }
    }
    
    func labelStyle(label:UILabel){
        //角丸のサイズ
        label.layer.cornerRadius = 10.0
        //角丸にするときは必須
        label.clipsToBounds = true
        //枠線の幅
        label.layer.borderWidth = 1.5
        //枠線の色
        label.layer.borderColor = UIColor.black.cgColor
    }

    @IBOutlet weak var explain1Label: UILabel!
    
    @IBOutlet weak var explain2Label: UILabel!
    
    @IBOutlet weak var explain3Label: UILabel!
    
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var backButtonText: UIButton!
    
    @IBAction func backButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    @IBOutlet weak var foodImageView: UIImageView!
    
    @IBOutlet weak var detailLabel: UILabel!
    
    @IBOutlet weak var detailText: UITextView!
    
    @IBAction func explainReturnButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
//        let storyboard:UIStoryboard = self.storyboard!
//        let nextView = storyboard.instantiateViewController(withIdentifier: "foodExplain") as! foodExplainViewController
//        self.present(nextView, animated: true, completion: nil)
    }
    @IBOutlet weak var foodImage: UIImageView!
    
    @IBOutlet weak var detailNavigationBar: UINavigationBar!
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}

