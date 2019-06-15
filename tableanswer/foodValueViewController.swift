//
//  foodValueViewController.swift
//  tableanswer
//
//  Created by 細川聖矢 on 2019/06/09.
//  Copyright © 2019 Seiya. All rights reserved.
//

import UIKit

class foodValueViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func valueReturnMenu(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
//        let storyboard:UIStoryboard = self.storyboard!
//        let nextView = storyboard.instantiateViewController(withIdentifier: "Menu") as! MenuViewController
//        self.present(nextView, animated: true, completion: nil)
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
