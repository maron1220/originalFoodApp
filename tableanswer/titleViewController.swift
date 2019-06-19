//
//  titleViewController.swift
//  tableanswer
//
//  Created by 細川聖矢 on 2019/06/19.
//  Copyright © 2019 Seiya. All rights reserved.
//

import UIKit

class titleViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.backgroundColor = UIColor.init(red: 255/255, green: 85/255, blue: 32/255, alpha: 1.0)
        titleLabel.textColor = UIColor.white
        
        buttonLabel.backgroundColor = UIColor.init(red: 255/255, green: 85/255, blue: 32/255, alpha: 1.0)
        buttonLabel.setTitleColor(UIColor.white, for: .normal)
        //角丸のサイズ
        buttonLabel.layer.cornerRadius = 10.0
        //角丸にするときは必須
        buttonLabel.clipsToBounds = true
        
    }
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var buttonLabel: UIButton!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
