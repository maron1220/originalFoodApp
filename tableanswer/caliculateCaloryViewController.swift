//
//  caliculateCaloryViewController.swift
//  tableanswer
//
//  Created by 細川聖矢 on 2019/06/08.
//  Copyright © 2019 Seiya. All rights reserved.
//

import UIKit

class caliculateCaloryViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        answerLabel.text = ""
    
    }
    @IBOutlet weak var proText: UITextField!
    
    @IBOutlet weak var fatText: UITextField!
    
    @IBOutlet weak var carboText: UITextField!
    
    @IBAction func calicuButton(_ sender: Any) {

        let Protein:String = proText.text!
        let Fat:String = fatText.text!
        let Carbo:String = carboText.text!
        let Pnum:Double = Double(Protein)!
        let Fnum:Double = Double(Fat)!
        let Cnum:Double = Double(Carbo)!
        let Sum = Pnum * 3.5 + Fnum * 8.5 + Cnum * 3.5
        answerLabel.text = String(Sum)
        //最後にキーボードを閉じる
            carboText.endEditing(true)
    }
    
    @IBOutlet weak var answerLabel: UILabel!
    @IBAction func caloryReturnMenuButton(_ sender: Any) {
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
