//
//  logWeightViewController.swift
//  tableanswer
//
//  Created by 細川聖矢 on 2019/06/08.
//  Copyright © 2019 Seiya. All rights reserved.
//

import UIKit

class logWeightViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    //Tableviewの紐づけ
    @IBOutlet weak var logWeightTableView: UITableView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return resultArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //セルに表示する内容
        let cell = logWeightTableView.dequeueReusableCell(withIdentifier: "Cell",for:indexPath)
        
        cell.textLabel?.text = resultArray[indexPath.row]
        
        return cell
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //決まり文句｡紐づけたTableviewの名前を代入
        logWeightTableView.delegate = self
        logWeightTableView.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    //記録されたlogを取り出すための配列
    var resultArray = [String]()
    
    //画面遷移のたびに読み込まれるための関数
    override func viewWillAppear(_ animated: Bool) {
        //決まり文句
        super.viewWillAppear(animated)
        //addというキー値で保存された、配列arrayを取り出す｡resultArrayに代入
        if UserDefaults.standard.object(forKey: "add") != nil{
            resultArray = UserDefaults.standard.object(forKey: "add") as! [String]
        }
        
        //tableViewを更新｡Tableviewの名前を代入｡
        logWeightTableView.reloadData()
    }
    
    
    
    @IBAction func weightReturnButton(_ sender: Any) {
        let storyboard:UIStoryboard = self.storyboard!
        let nextView = storyboard.instantiateViewController(withIdentifier: "Menu") as! MenuViewController
        self.present(nextView, animated: true, completion: nil)
    }
    @IBAction func logButton(_ sender: Any) {
        let storyboard:UIStoryboard = self.storyboard!
        let nextView = storyboard.instantiateViewController(withIdentifier: "logField") as! logFieldViewController
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
