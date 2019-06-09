//
//  MenuViewController.swift
//  tableanswer
//
//  Created by 細川聖矢 on 2019/06/08.
//  Copyright © 2019 Seiya. All rights reserved.
//

import UIKit

//tableviewを挿入したからヒモ付が必要

class MenuViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //cellの中身を決める↓
        
        let cell = menuTableView.dequeueReusableCell(withIdentifier: "Cell",for:indexPath)
        
        cell.textLabel?.text = menuArray[indexPath.row]
        
        return cell
    }
    
    var menuArray:[String] = ["療法食","体重管理","カロリー算出","給与量計算","決めて","ないよ"]
    
    var menuArrayNum:Int = 0
    
    //tableviewが選択された場合の処理
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard:UIStoryboard = self.storyboard!
        
        /*if indexPath.row == 1{
         //identiferを指定して遷移先を決める
         let nextView = storyboard.instantiateViewController(withIdentifier: "logWeight") as! logWeightViewController
         //画面遷移↓
         self.present(nextView, animated: true, completion: nil)*/
        
            let i:Int = indexPath.row
            switch i {
            case 0:
                //identiferを指定して遷移先を決める
                let nextView = storyboard.instantiateViewController(withIdentifier: "petFood") as! petFoodViewController
                 self.present(nextView, animated: true, completion: nil)
                
            case 1:
                //identiferを指定して遷移先を決める
                let nextView = storyboard.instantiateViewController(withIdentifier: "logWeight") as! logWeightViewController
                 self.present(nextView, animated: true, completion: nil)
            case 2:
                //identiferを指定して遷移先を決める
                let nextView = storyboard.instantiateViewController(withIdentifier: "caliculateCalory") as! caliculateCaloryViewController
                //画面遷移↓
                self.present(nextView, animated: true, completion: nil)
            case 3:
                //identiferを指定して遷移先を決める
                let nextView = storyboard.instantiateViewController(withIdentifier: "foodValue") as! foodValueViewController
                //画面遷移↓
                self.present(nextView, animated: true, completion: nil)
            default:
                return
            }
        }
        
   
    
    
    @IBOutlet weak var menuTableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //↓tableviewを使わないからこの宣言が必要
        menuTableView.delegate = self
        menuTableView.dataSource = self
        
        
    }
    
    
    
    
    //画面遷移のたびに呼び出す処理はここ↓
    override func viewWillAppear(_ animated: Bool) {
        //↓定型文
        super.viewWillAppear(animated)
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
