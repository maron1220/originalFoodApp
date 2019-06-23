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
        
//        WhichFood()
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
    //犬
    var explain1Array:[[String]] = [/*腎臓*/["慢性腎臓病の管理","慢性腎臓病の管理","慢性腎臓病の管理","初期の心臓疾患の管理","初期の心臓疾患の管理","慢性腎臓病の管理","慢性腎臓病の管理"],/*膀胱･尿路*/["ストラバイト結石症に適応","ストラバイト結石症に適応","ストラバイト結石症に適応","ストラバイト結石症に適応","ストラバイト結石症に適応","膀胱炎に適応","ストラバイト結石の溶解･管理","非ストラバイト性の尿石形成を抑制","ストラバイト結石の溶解･管理","ストラバイト尿石症に対応","ストラバイト尿石症に対応"],/*皮膚*/["皮膚疾患の犬に給与","皮膚疾患の犬に給与","皮膚疾患の犬に給与","皮膚疾患の犬に給与","皮膚疾患の犬に給与","皮膚疾患の犬に給与","皮膚疾患の犬に給与","皮膚疾患の犬に給与","スキンバリアを維持","新奇動物性たんぱく質を使用","新奇動物性たんぱく質を使用","食物アレルギーに配慮","食物アレルギーに配慮","食物アレルギーに対応"],/*消化器*/["消化吸収不良による下痢に適応","食物繊維の増量が好ましい下痢に適応","消化器疾患の犬に適応","ストレス性の消化器症状に対応","膵炎に適応"],/*体重管理*/["減量を必要とする犬に給与","減量を必要とする犬に給与","低カロリー","低カロリー","減量を必要とする犬に給与"],/*糖尿病*/["糖尿病の犬に給与","低脂肪"]]
    
    //猫
    var explainCat1Array:[[String]] = [/*腎臓*/["慢性腎臓病の管理","慢性腎臓病の管理","慢性腎臓病の管理","慢性腎臓病の管理","慢性腎臓病の管理"],/*膀胱･尿路*/["ストラバイト結石症に適応","ストラバイト結石症に適応","ストラバイト結石症に適応","ストラバイト結石症に適応","ストラバイト結石症に適応","ストラバイト結石症に適応","ストラバイト結石症に適応","特発性膀胱炎に適応","特発性膀胱炎に適応","特発性膀胱炎に適応","特発性膀胱炎に適応","ストラバイト尿石症に対応","ストラバイト尿石症に対応","ストラバイト尿石症に対応"],/*皮膚*/["皮膚疾患の猫に給与","皮膚疾患の猫に給与","皮膚疾患の猫に給与","食物アレルギーに配慮"],/*消化器*/["消化性が高い原材料を使用","便秘の猫に適応","消化器症状のケアに役立つ"],/*体重管理*/["減量を必要とする猫に給与","減量を必要とする猫に給与","低カロリー","低カロリー","低カロリー","低炭水化物"],/*糖尿病*/["糖尿病の猫に給与","糖尿病の猫に配慮"]]
    
    //ラベル2の説明
    //犬
    var explain2Array:[[String]] = [/*腎臓*/["リンの含有量を制限","リンの含有量を制限","食物アレルギーにも配慮","関節疾患の管理","ナトリウムを制限","リンの調整と低ナトリウム","リンの含有量を制限"],/*膀胱･尿路*/["シュウ酸カルシウム結石症に適応","シュウ酸カルシウム結石症に適応","シュウ酸カルシウム結石症に適応","シュウ酸カルシウム結石症に適応","シュウ酸カルシウム結石症に適応","犬の精神的な健康に配慮","シュウ酸カルシウム結石形成を抑制","ナトリウム･カルシウムを制限","シュウ酸カルシウム結石形成を抑制","シュウ酸カルシウム尿石症に対応","リンを制限"],/*皮膚*/["高消化性の原材料","消化器疾患の犬に給与","消化器疾患の犬に給与","消化器疾患の犬に給与","消化器疾患の犬に給与","消化器疾患の犬に給与","消化器疾患の犬に給与","消化器疾患の犬に給与","自然由来のポリフェノール､卵を配合","タンパク源(サーモンとポテト)､炭水化物源(ポテト)","タンパク源(ダックとポテト)､炭水化物源(ポテト)","加水分解タンパクを使用","加水分解タンパクを使用","タンパク源(ポテト)"],/*消化器*/["高脂血症に適応","大腸性疾患に適応","栄養供給が高まっている犬に適応","加水分解ミルクプロテインを含有","高脂血症に適応"],/*体重管理*/["食物繊維を増量","食物繊維を増量","野菜由来の食物繊維を含有","低脂肪","関節炎の犬に給与"],/*糖尿病*/["炭水化物の原料として大麦を配合","低カロリー"]]
    
    //猫
    var explainCat2Array:[[String]] = [/*腎臓*/["リンの含有量を制限","リンの含有量を制限","リンの含有量を制限","ツナとチキンの二種類の味","リンの含有量を制限"],/*膀胱･尿路*/["シュウ酸カルシウム結石症に適応","シュウ酸カルシウム結石症に適応","シュウ酸カルシウム結石症に適応","シュウ酸カルシウム結石症に適応","シュウ酸カルシウム結石症に適応","シュウ酸カルシウム結石症に適応","シュウ酸カルシウム結石症に適応","猫の精神的な健康に配慮","ストラバイト尿石症に対応","低カロリーで減量に役立つ","低カロリーで減量に役立つ","予測尿pH 5.9 - 6.1","ストラバイト尿石の溶解治療に適応","予測尿pH 6.1 - 6.4"],/*皮膚*/["消化器疾患の猫に給与","消化器疾患の猫に給与","消化器疾患の猫に給与","高消化性の加水分解タンパクを使用"],/*消化器*/["少ない食事量でも必要なカロリーを摂取可能","高消化性の原材料を使用","優れた消化性"],/*体重管理*/["食物繊維を増量","骨と関節の健康維持","野菜由来の食物繊維を含有","低脂肪","低脂肪","高タンパク質"],/*糖尿病*/["肝リピドーシスの猫にも適応","低炭水化物"]]
    
    //ラベル3の説明
    var explain3Array:[[String]] = [/*腎臓*/["食欲刺激","食欲刺激","大豆タンパクを使用","腎臓病にも適応","腎臓病にも適応","筋肉の生成をサポート","国産フード"],/*膀胱･尿路*/["ミネラル成分を調整","ミネラル成分を調整","体重過多に配慮","食物アレルギーに配慮","減量を必要とする犬に適応","減量を必要とする犬に適応","ミネラル･尿pHに配慮","ミネラルを調整","低カロリー","食べやすい小粒サイズ","マグネシウムを制限"],/*皮膚*/["ω3脂肪酸を含有","加水分解タンパクを使用","体重過多に配慮","減量が必要な犬に給与","炭水化物源としてコーンスターチを使用","タンパク源(ダック)､炭水化物源(タピオカ)","タンパク源(フィッシュとポテト)､炭水化物源(ポテト)","タンパク源(カンガルーとオーツ)､炭水化物源(オーツ)","ω-3&6脂肪酸を配合","ω-3脂肪酸を配合","ω-3脂肪酸を配合","炭水化物源(ポテト)","炭水化物源(コーンスターチ)","合成酸化剤不使用"],/*消化器*/["消化性の高い原材料を使用","食物繊維の含有量を高く調整","可溶性食物繊維を配合","混合食物繊維を調整","蛋白喪失性腸症に適応"],["おねだり頻度の軽減効果","pHケアで尿石症にも配慮","リバウンドにも配慮","高食物繊維","食べやすい小粒サイズ"],/*糖尿病*/["タンパク質を増量","高食物繊維"]]
    
    //猫
    var explainCat3Array:[[String]] = [/*腎臓*/["食欲刺激","高エネルギー","食欲刺激","おいしさを追求","国産フード"],/*膀胱･尿路*/["結石予防効果が高い","ミネラル成分を調整","ミネラル成分を調整","食欲をそそる独自の香りを調整","体重過多に配慮","減量を必要とする猫に適応","特発性膀胱炎に適応","減量を必要とする猫に適応","シュウ酸カルシウム尿石症に対応","野菜由来の食物繊維を配合","ストレスの多い環境に配慮","リンを制限","リンを制限","リンを制限"],/*皮膚*/["加水分解タンパクを使用","タンパク源(ダック)､炭水化物源(ライス)","炭水化物源(コーンスターチ)","炭水化物源(米)"],/*消化器*/["可溶性食物繊維を配合","可溶性食物繊維の含有量を調整","混合食物繊維を含有"],/*体重管理*/["pHケアで尿石症にも配慮","pHケアで尿石症にも配慮","リバウンドにも配慮","高食物繊維","高食物繊維","アルギニンとタウリンを配合"],/*糖尿病*/["炭水化物の原料として大麦を配合","高タンパク質"]]
    
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
//    func WhichFood(){
//        if secondSpecieNumber == 0{
//            explainText = textArray[secondFoodNumber][titleNumber]
//
////            switch titleNumber {
////            case 0:
////                explainText = textArray[secondFoodNumber][0]
////            case 1:
////                explainText = textArray[secondFoodNumber][1]
////            case 2:
////                explainText = textArray[secondFoodNumber][2]
////            case 3:
////                explainText = textArray[secondFoodNumber][3]
////            default:
////                explainText = ""
////            }
//        }else if secondSpecieNumber == 1{
//            switch titleNumber {
//            case 0:
//                explainText = textCatArray[secondFoodNumber][0]
//            case 1:
//                explainText = textCatArray[secondFoodNumber][1]
//            case 2:
//                explainText = textCatArray[secondFoodNumber][2]
//            case 3:
//                explainText = textCatArray[secondFoodNumber][3]
//            default:
//                explainText = ""
//            }}
//    }
    
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
            image = UIImage(named: "dogFood\(secondFoodNumber)\(titleNumber)")
//            switch titleNumber{
//            case 0:
//                image = UIImage(named: "ph")
//            case 1:
//                image = UIImage(named: "food\(secondFoodNumber)1")
//            case 2:
//                image = UIImage(named: "food\(secondFoodNumber)2")
//            case 3:
//                image = UIImage(named: "food\(secondFoodNumber)3")
//            default:
//                image = UIImage(named: "")
//            }
            
        }else if secondSpecieNumber == 1{
            image = UIImage(named: "catFood\(secondFoodNumber)\(titleNumber)")
//            switch titleNumber{
//            case 0:
//                image = UIImage(named: "foodCat\(secondFoodNumber)0")
//            case 1:
//                image = UIImage(named: "foodCat\(secondFoodNumber)1")
//            case 2:
//                image = UIImage(named: "foodCat\(secondFoodNumber)2")
//            case 3:
//                image = UIImage(named: "foodCat\(secondFoodNumber)3")
//            default:
//                image = UIImage(named: "")
//        }
        
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

