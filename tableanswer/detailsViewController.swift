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
    var textArray:[[String]] = [["慢性腎臓病の管理","慢性腎臓病の管理","慢性腎臓病の管理","慢性腎臓病の管理","慢性腎臓病の管理","慢性腎臓病の管理","慢性腎臓病の管理","慢性腎臓病の管理","慢性腎臓病の管理"],["犬心臓1","心臓2","心臓3","心臓4"],["犬肝臓1","肝臓2","肝臓3","肝臓4"],["犬皮膚1","皮膚2","皮膚3","皮膚4","皮膚5","皮膚6","皮膚7"]]
    
    var textCatArray:[[String]] = [["猫腎臓1","腎臓2","腎臓3","腎臓4"],["猫心臓1","心臓2","心臓3","心臓4"],["猫肝臓1","肝臓2","肝臓3","肝臓4"],["猫皮膚1","皮膚2","皮膚3","皮膚4","皮膚5","皮膚6","皮膚7"]]
    
    //ラベル1の説明
    var explain1Array:[[String]] = [["慢性腎臓病の管理","慢性腎臓病の管理","慢性腎臓病の管理","慢性腎臓病の管理","初期の心臓疾患の管理","初期の心臓疾患の管理","慢性腎臓病の管理","慢性腎臓病の管理","慢性腎臓病の管理"],["ストラバイト結石症に適応","ストラバイト結石症に適応","ストラバイト結石症に適応","ストラバイト結石症に適応","ストラバイト結石の溶解･管理","非ストラバイト性の尿石形成を抑制","ストラバイト結石の溶解･管理","ストラバイト尿石症に対応","ストラバイト尿石症に対応"],["犬肝臓1","肝臓2","肝臓3","肝臓4"],["犬皮膚1","皮膚2","皮膚3","皮膚4","皮膚5","皮膚6","皮膚7"]]
    
    //猫
    var explainCat1Array:[[String]] = [["慢性腎臓病の管理","慢性腎臓病の管理","慢性腎臓病の管理","慢性腎臓病の管理","慢性腎臓病の管理","慢性腎臓病の管理"],["ストラバイト結石症に適応","ストラバイト結石症に適応","ストラバイト結石症に適応","ストラバイト結石症に適応","ストラバイト結石症に適応","ストラバイト結石症に適応","ストラバイト結石症に適応","特発性膀胱炎に適応"],["猫肝臓1","肝臓2","肝臓3","肝臓4"],["猫皮膚1","皮膚2","皮膚3","皮膚4","皮膚5","皮膚6","皮膚7"]]
    
    //ラベル2の説明
    var explain2Array:[[String]] = [["リンの含有量を制限","リンの含有量を制限","食物アレルギーにも配慮","blank","関節疾患の管理","ナトリウムを制限","blank","リンの調整と低ナトリウム","リンの含有量を制限"],["シュウ酸カルシウム結石症に適応","シュウ酸カルシウム結石症に適応","シュウ酸カルシウム結石症に適応","シュウ酸カルシウム結石症に適応","シュウ酸カルシウム結石形成を抑制","ナトリウム･カルシウムを制限","シュウ酸カルシウム結石形成を抑制","シュウ酸カルシウム尿石症に対応","リンを制限"],["犬肝臓1","肝臓2","肝臓3","肝臓4"],["犬皮膚1","皮膚2","皮膚3","皮膚4","皮膚5","皮膚6","皮膚7"]]
    
    //猫
    var explainCat2Array:[[String]] = [["リンの含有量を制限","リンの含有量を制限","リンの含有量を制限","blank","ツナとチキンの二種類の味","リンの含有量を制限"],["シュウ酸カルシウム結石症に適応","シュウ酸カルシウム結石症に適応","シュウ酸カルシウム結石症に適応","シュウ酸カルシウム結石症に適応","シュウ酸カルシウム結石症に適応","シュウ酸カルシウム結石症に適応","シュウ酸カルシウム結石症に適応","猫の精神的な健康に配慮"],["猫肝臓1","肝臓2","肝臓3","肝臓4"],["猫皮膚1","皮膚2","皮膚3","皮膚4","皮膚5","皮膚6","皮膚7"]]
    
    //ラベル3の説明
    var explain3Array:[[String]] = [["食欲刺激","食欲刺激","大豆タンパクを使用","blank","腎臓病にも適応","腎臓病にも適応","blank","筋肉の生成をサポート","国産フード"],["ミネラル成分を調整","体重過多に配慮","食物アレルギーに配慮","減量を必要とする犬に適応","ミネラル･尿pHに配慮","ミネラルを調整","低カロリー","食べやすい小粒サイズ","マグネシウムを制限"],["犬肝臓1","肝臓2","肝臓3","肝臓4"],["犬皮膚1","皮膚2","皮膚3","皮膚4","皮膚5","皮膚6","皮膚7"]]
    
    //猫
    var explainCat3Array:[[String]] = [["食欲刺激","高エネルギー","食欲刺激","blank","おいしさを追求","国産フード"],["結石予防効果が高い","ミネラル成分を調整","ミネラル成分を調整","食欲をそそる独自の香りを調整","体重過多に配慮","減量を必要とする猫に適応","特発性膀胱炎に適応","減量を必要とする猫に適応"],["猫肝臓1","肝臓2","肝臓3","肝臓4"],["猫皮膚1","皮膚2","皮膚3","皮膚4","皮膚5","皮膚6","皮膚7"]]
    
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
    
    //表示するラベルの場合分け
    func WhichExplain(){
        if secondSpecieNumber == 0{
            label1 = explain1Array[secondFoodNumber][titleNumber]
            label2 = explain2Array[secondFoodNumber][titleNumber]
            label3 = explain3Array[secondFoodNumber][titleNumber]
            
//            switch titleNumber{
//            case 0:
//                label1 = explain1Array[secondFoodNumber][0]
//                label2 = explain2Array[secondFoodNumber][0]
//                label3 = explain3Array[secondFoodNumber][0]
//            case 1:
//                label1 = explain1Array[secondFoodNumber][1]
//                label2 = explain2Array[secondFoodNumber][1]
//                label3 = explain3Array[secondFoodNumber][1]
//            case 2:
//                label1 = explain1Array[secondFoodNumber][2]
//                label2 = explain2Array[secondFoodNumber][2]
//                label3 = explain3Array[secondFoodNumber][2]
//            case 3:
//                label1 = explain1Array[secondFoodNumber][3]
//                label2 = explain2Array[secondFoodNumber][3]
//                label3 = explain3Array[secondFoodNumber][3]
//            case 4:
//                label1 = explain1Array[secondFoodNumber][4]
//                label2 = explain2Array[secondFoodNumber][4]
//                label3 = explain3Array[secondFoodNumber][4]
//            case 5:
//                label1 = explain1Array[secondFoodNumber][5]
//                label2 = explain2Array[secondFoodNumber][5]
//                label3 = explain3Array[secondFoodNumber][5]
//            case 6:
//                label1 = explain1Array[secondFoodNumber][6]
//                label2 = explain2Array[secondFoodNumber][6]
//                label3 = explain3Array[secondFoodNumber][6]
//            case 7:
//                label1 = explain1Array[secondFoodNumber][7]
//                label2 = explain2Array[secondFoodNumber][7]
//                label3 = explain3Array[secondFoodNumber][7]
//            default:
//                label1 = ""
//                label2 = ""
//                label3 = ""
//            }
        }else if secondSpecieNumber == 1{
            label1 = explainCat1Array[secondFoodNumber][titleNumber]
            label2 = explainCat2Array[secondFoodNumber][titleNumber]
            label3 = explainCat3Array[secondFoodNumber][titleNumber]
//            switch titleNumber{
//            case 0:
//                label1 = explainCat1Array[secondFoodNumber][0]
//                label2 = explainCat2Array[secondFoodNumber][0]
//                label3 = explainCat3Array[secondFoodNumber][0]
//            case 1:
//                label1 = explainCat1Array[secondFoodNumber][1]
//                label2 = explainCat2Array[secondFoodNumber][1]
//                label3 = explainCat3Array[secondFoodNumber][1]
//            case 2:
//                label1 = explainCat1Array[secondFoodNumber][2]
//                label2 = explainCat2Array[secondFoodNumber][2]
//                label3 = explainCat3Array[secondFoodNumber][2]
//            case 3:
//                label1 = explainCat1Array[secondFoodNumber][3]
//                label2 = explainCat2Array[secondFoodNumber][3]
//                label3 = explainCat3Array[secondFoodNumber][3]
//            default:
//                label1 = ""
//                label2 = ""
//                label3 = ""
//            }
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

