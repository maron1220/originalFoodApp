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
    
    @IBAction func pushTextField(_ sender: Any) {
    }
   
    
    
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
    
    //ピッカービューの最初の表示
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return animalSpeciesList[row]
    }
    
    
    
    @IBOutlet weak var speciesPickerView: UIPickerView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Delegateの設定
        speciesPickerView.delegate = self
        speciesPickerView.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func foodReturnButton(_ sender: Any) {
        let storyboard:UIStoryboard = self.storyboard!
        let nextView = storyboard.instantiateViewController(withIdentifier: "Menu") as! MenuViewController
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
