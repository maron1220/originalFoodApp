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
        
        detailLabel.text = titleLabel
        
    }
    
    //遷移元からのデータを受け取る
    var titleLabel = ""
    
    
    
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
