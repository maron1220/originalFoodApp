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
        
        detailLabel.text = titleLabel
        detailText.text = explainText
    }
    
    //テキストフィールドに入れる値を配列にする
    var textArray:[[String]] = [["犬腎臓1","腎臓2","腎臓3","腎臓4"],["犬心臓1","心臓2","心臓3","心臓4"],["犬肝臓1","肝臓2","肝臓3","肝臓4"],["犬皮膚1","皮膚2","皮膚3","皮膚4","皮膚5","皮膚6","皮膚7"]]
    
    var textCatArray:[[String]] = [["猫腎臓1","腎臓2","腎臓3","腎臓4"],["猫心臓1","心臓2","心臓3","心臓4"],["猫肝臓1","肝臓2","肝臓3","肝臓4"],["猫皮膚1","皮膚2","皮膚3","皮膚4","皮膚5","皮膚6","皮膚7"]]
    
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
    
    @IBOutlet weak var detailLabel: UILabel!
    
    @IBOutlet weak var detailText: UITextView!
    
    @IBAction func explainReturnButton(_ sender: Any) {
        let storyboard:UIStoryboard = self.storyboard!
        let nextView = storyboard.instantiateViewController(withIdentifier: "foodExplain") as! foodExplainViewController
        self.present(nextView, animated: true, completion: nil)
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
