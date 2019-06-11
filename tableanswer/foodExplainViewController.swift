//
//  foodExplainViewController.swift
//  tableanswer
//
//  Created by 細川聖矢 on 2019/06/09.
//  Copyright © 2019 Seiya. All rights reserved.
//

import UIKit

class foodExplainViewController: UIViewController {

    //遷移元ページから値を受け取る関数
    
    var sendSpecie = ""
    var sendFood = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //遷移元の値をラベルに入れる
        chosenSpecie.text = sendSpecie
        chosenFood.text = sendFood
    }
    
    @IBOutlet weak var chosenSpecie: UILabel!
    @IBOutlet weak var chosenFood: UILabel!
    
    
    
    
    
    @IBAction func labelReturnButton(_ sender: Any) {
        let storyboard:UIStoryboard = self.storyboard!
        let nextView = storyboard.instantiateViewController(withIdentifier: "petFood") as! petFoodViewController
        self.present(nextView, animated: true, completion: nil)
    }
    @IBAction func labelMenuReturnButton(_ sender: Any) {
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
