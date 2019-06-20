//
//  petFoodViewController.swift
//  tableanswer
//
//  Created by 細川聖矢 on 2019/06/08.
//  Copyright © 2019 Seiya. All rights reserved.
//

import UIKit



class petFoodViewController: UIViewController , UIPickerViewDelegate , UIPickerViewDataSource {
    
    @IBOutlet weak var SpeciesNameLabel: UILabel!
    @IBOutlet weak var foodNameLabel: UILabel!
    
    
    
    //pickerviewに入れるための配列
    var animalSpeciesList = ["犬" , "猫"]
    var foodList = ["腎臓用","心臓用","肝臓用","皮膚用"]
    
    //ピッカービューの列の数
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    //ピッカービューのリストの数
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch component {
        case 0:
            return animalSpeciesList.count
        case 1:
            return foodList.count
        default:
            return 0
        }
        //pickerviewの列も0から始まる｡配列と一緒｡
        //componentは元々設定されている｡
    }
    
    //ピッカービュー
    var aniSpi = ""
    var fooNam = ""
    
    //配列のインデックス番号を取得
    var aniSpiindex:Int = 0
    var fooNamindex:Int = 0
    
    //ピッカービューが選択されたときの挙動
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch component{
        case 0:
            aniSpi = animalSpeciesList[row]
            aniSpiindex = speciesPickerView.selectedRow(inComponent: 0)
            return SpeciesNameLabel.text = animalSpeciesList[row]
        case 1:
            fooNam = foodList[row]
            //選択されたPickerの番号を取得
            fooNamindex = speciesPickerView.selectedRow(inComponent: 1)
            return foodNameLabel.text = foodList[row]
        default:
            break
        }
        
    }
    
    
    
    //    //pickerviewの動きを決める
    //    func pickerDo(){
    //        if pickerUp{
    //
    //        }else{
    //            pickerButtomMargin.constant = pickerViewHeight.constant * -1
    //        }
    //    }
    
    //ピッカービューの最初の表示
    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        
        switch component{
        case 0:
            let animalData = animalSpeciesList[row]
            let animalTytle = NSAttributedString(string: animalData,attributes: [NSAttributedString.Key.foregroundColor:UIColor.white])
            return animalTytle/*animalSpeciesList[row]*/
        case 1:
            let foodData = foodList[row]
            let foodTytle = NSAttributedString(string: foodData,attributes: [NSAttributedString.Key.foregroundColor:UIColor.white])
            return foodTytle/*foodList[row]*/
        default:
            return nil
        }
        
    }
    
    //    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
    //
    //
    //    }
    
    @IBOutlet weak var speciesPickerView: UIPickerView!
    
    //ボタンを押したらpickerを呼び出す
    @IBAction func inputButton(_ sender: Any) {
        //        pickerButtomMargin.constant = 60
        //
        //        //animationをつける
        //        UIView.animate(withDuration: 0.5, animations:self.view.layoutIfNeeded)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //rabelに初期値を入れておく
        SpeciesNameLabel.text = animalSpeciesList[0]
        foodNameLabel.text = foodList[0]
        aniSpi = animalSpeciesList[0]
        fooNam = foodList[0]
        
        //pikerviewの初期位置を決める｡
        //        pickerButtomMargin.constant = pickerViewHeight.constant * -1
        //Delegateの設定
        speciesPickerView.delegate = self
        speciesPickerView.dataSource = self
        
        //pickerの背景色
        speciesPickerView.backgroundColor = UIColor(red: 255/255, green: 85/255, blue: 32/255, alpha: 1.0)
        
        //ボタンの色
        searchButtonLabel.setTitleColor(UIColor.black, for: UIControl.State.normal)
//        searchButtonLabel.backgroundColor = UIColor(red: 255/255, green: 85/255, blue: 32/255, alpha: 1.0)
//        searchButtonLabel.layer.cornerRadius = 10.0
        
//        //navigation bar の色
//        petFoodNavigationBar.barTintColor = UIColor.init(red: 255/255, green: 85/255, blue: 32/255, alpha: 1.0)
        
        topLabel.textColor = UIColor.white
        topLabel.backgroundColor = UIColor(red: 255/255, green: 85/255, blue: 32/255, alpha: 1.0)
        
//        labelView.backgroundColor = UIColor(red: 255/255, green: 85/255, blue: 32/255, alpha: 1.0)
//        
//        SpeciesNameLabel.textColor = UIColor.white
//        foodNameLabel.textColor = UIColor.white
    }
    
    @IBOutlet weak var searchButtonLabel: UIButton!
    
    @IBOutlet weak var petFoodNavigationBar: UINavigationBar!
    
    @IBOutlet weak var labelView: UIView!
    
    @IBAction func searchButton(_ sender: Any) {
        performSegue(withIdentifier: "sendSegue",sender: nil)
    }
    
    @IBAction func foodReturnButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        //        let storyboard:UIStoryboard = self.storyboard!
        //        let nextView = storyboard.instantiateViewController(withIdentifier: "Menu") as! MenuViewController
        //        self.present(nextView, animated: true, completion: nil)
    }
    @IBOutlet weak var pickerButtomMargin: NSLayoutConstraint!
    
    @IBOutlet weak var pickerViewHeight: NSLayoutConstraint!
    
    @IBOutlet weak var topLabel: UILabel!
    
    //画面遷移時に値を遷移先に送る
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "sendSegue"){
            //遷移先ページをインスタンス化する
            let explainView : foodExplainViewController = segue.destination as! foodExplainViewController
            
            //遷移先ページの変数に値を入れる
            explainView.sendSpecie = aniSpi
            explainView.sendFood = fooNam
            explainView.specieNumber = aniSpiindex
            explainView.foodNumber = fooNamindex
        }
    }
    
}
