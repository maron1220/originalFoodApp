//
//  foodExplainViewController.swift
//  tableanswer
//
//  Created by 細川聖矢 on 2019/06/09.
//  Copyright © 2019 Seiya. All rights reserved.
//

import UIKit

class foodExplainViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //選んだPicker(の行数)によって表示内容を変える
        switch foodNumber{
        case 0:
            return foodlistArray[0].count
        case 1:
            return foodlistArray[1].count
        case 2:
            return foodlistArray[2].count
        case 3:
            return foodlistArray[3].count
            default:
            return 0
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = foodListTableView.dequeueReusableCell(withIdentifier: "ListCell",for:indexPath)
        switch foodNumber{
        case 0:
            cell.textLabel?.text = foodlistArray[0][indexPath.row]
            
        case 1:
            cell.textLabel?.text = foodlistArray[1][indexPath.row]
            
        case 2:
            cell.textLabel?.text = foodlistArray[2][indexPath.row]
            
        case 3:
            cell.textLabel?.text = foodlistArray[3][indexPath.row]
            
        default:
            break
        }
        return cell
    }

    
    //遷移元ページから値を受け取る変数
    var sendSpecie = ""
    var sendFood = ""
    
    //配列のインデックス番号を受け取る変数
    var specieNumber:Int = 0
    var foodNumber:Int = 0
    
    //foodlistを入れる配列
    var foodlistArray:[[String]] = [["犬腎臓用food1","腎臓用food2","腎臓用food3","腎臓用food4"],["犬心臓用food1","心臓用food2","心臓用food3"],["犬肝臓用food1","肝臓用food2","肝臓用food3","肝臓用food"],["犬皮膚用food1","皮膚用food2","皮膚用food3","皮膚用food4","皮膚用food5","皮膚用food6","皮膚用food7"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //遷移元の値をラベルに入れる
        chosenSpecie.text = sendSpecie
        chosenFood.text = sendFood
        
        //忘れてた↓
        foodListTableView.delegate = self
        foodListTableView.dataSource = self
    }
    @IBOutlet weak var foodListTableView: UITableView!
    
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
