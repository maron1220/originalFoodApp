//
//  logFieldViewController.swift
//  tableanswer
//
//  Created by 細川聖矢 on 2019/06/09.
//  Copyright © 2019 Seiya. All rights reserved.
//

import UIKit

class logFieldViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    var weightLogArray = [String]()
    
    
    
    @IBAction func logReturnButton(_ sender: Any) {
        let storyboard:UIStoryboard = self.storyboard!
        let nextView = storyboard.instantiateViewController(withIdentifier: "logWeight") as! logWeightViewController
        self.present(nextView, animated: true, completion: nil)
    }
    @IBAction func logMenuReturnButton(_ sender: Any) {
        let storyboard:UIStoryboard = self.storyboard!
        let nextView = storyboard.instantiateViewController(withIdentifier: "Menu") as! MenuViewController
        self.present(nextView, animated: true, completion: nil)
    }
    
    @IBAction func logMemoryButton(_ sender: Any) {
        
       /*配列にテキストフィールドの値を入力する*/ weightLogArray.append("\(weightTextField.text!)kg")
        /*UserDefaultsに記録を残す*/
        UserDefaults.standard.set(weightLogArray, forKey: "add")
        
        let storyboard:UIStoryboard = self.storyboard!
        let nextView = storyboard.instantiateViewController(withIdentifier: "logWeight") as! logWeightViewController
        self.present(nextView, animated: true, completion: nil)
    }
    @IBOutlet weak var weightTextField: UITextField!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
