//
//  petFoodViewController.swift
//  tableanswer
//
//  Created by 細川聖矢 on 2019/06/08.
//  Copyright © 2019 Seiya. All rights reserved.
//

import UIKit



class petFoodViewController: UIViewController , UIPickerViewDelegate , UIPickerViewDataSource {
    
    @IBOutlet weak var speciesTextField: UITextField!
   
    var pickerUp = true
    
    //pickerviewに入れるための配列
    var animalSpeciesList = ["犬" , "猫"]
    
    //ピッカービューの列の数
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    //ピッカービューのリストの数
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return animalSpeciesList.count
    }
    
    //ピッカービューが選択されたときの挙動
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        speciesTextField.text = animalSpeciesList[row]
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
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return animalSpeciesList[row]
    }
    
    @IBOutlet weak var speciesPickerView: UIPickerView!
    
    //ボタンを押したらpickerを呼び出す
    @IBAction func inputButton(_ sender: Any) {
        pickerButtomMargin.constant = 120
        
        //animationをつける
        UIView.animate(withDuration: 0.5, animations:self.view.layoutIfNeeded)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //pikerviewの初期位置を決める｡
         pickerButtomMargin.constant = pickerViewHeight.constant * -1
        //Delegateの設定
        speciesPickerView.delegate = self
        speciesPickerView.dataSource = self

    }
    
    
    
    @IBAction func foodReturnButton(_ sender: Any) {
        let storyboard:UIStoryboard = self.storyboard!
        let nextView = storyboard.instantiateViewController(withIdentifier: "Menu") as! MenuViewController
        self.present(nextView, animated: true, completion: nil)
    }
    @IBOutlet weak var pickerButtomMargin: NSLayoutConstraint!
    
    @IBOutlet weak var pickerViewHeight: NSLayoutConstraint!
    
}
