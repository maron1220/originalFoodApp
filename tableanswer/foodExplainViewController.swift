//
//  foodExplainViewController.swift
//  tableanswer
//
//  Created by 細川聖矢 on 2019/06/09.
//  Copyright © 2019 Seiya. All rights reserved.
//

import UIKit

class foodExplainViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    
    
    //ラベルのバックグラウンドカラーを決める｡ついでに文字色も｡
    func labelBackground(){
        chosenSpecie.textColor = UIColor.white
        chosenFood.textColor = UIColor.white
        //        switch foodNumber {
        //        case 0:
        //            speciesBackground = UIColor(red: 89/255, green: 211/255, blue: 102/255, alpha: 1.0)
        //            chosenFood.backgroundColor = UIColor.init(displayP3Red: 89/255, green: 211/255, blue: 102/255, alpha: 1.0)
        //        default:
        //            chosenSpecie.backgroundColor = UIColor.white
        //            chosenFood.backgroundColor = UIColor.white
        //        }
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //選んだPicker(の行数)によって表示内容を変える
        //犬と猫で場合分けしてから､フードを場合分けする
        if specieNumber == 0 {
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
        } else if specieNumber == 1 {
            switch foodNumber{
            case 0:
                return catfoodlistArray[0].count
            case 1:
                return catfoodlistArray[1].count
            case 2:
                return catfoodlistArray[2].count
            case 3:
                return catfoodlistArray[3].count
            default:
                return 0
            }
        }
        else  {
            return 0
        }
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //as以降でtableViewCellを呼び出す
        let cell = foodListTableView.dequeueReusableCell(withIdentifier: "ListCell",for:indexPath) /*as! explainTableViewCell*/
        
        //右端に矢印を出す
        cell.accessoryType = UITableViewCell.AccessoryType.disclosureIndicator
        
        //textのフォントサイズ
        cell.textLabel!.font = UIFont.systemFont(ofSize: 24)
        
        //セルに出す画像
        cell.imageView?.image = UIImage(named:"orange-food24")
//        //imageのサイズ
//        cell.imageView!.contentMode = .scaleAspectFit
        
        //switchの中でセルに表示する内容を決めるための関数
        //foodlistArray[number]でどの配列を使うか選び､[indexPath.row]で値を取り出す
        //cellLabelはexplainTableViewCellで定義している
        func showTextLabel(number:Int){
            cell.textLabel?.text = foodlistArray[number][indexPath.row]
            //            //文字色の変更
            //            cell.textLabel?.textColor = UIColor.white
        }
        //switchの中でセルに表示する内容を決めるための関数｡猫｡
        func showCatTextLabel(number:Int){
            cell.textLabel?.text = catfoodlistArray[number][indexPath.row]
            //            //文字色の変更
            //            cell.textLabel?.textColor = UIColor.white
        }
        
//        func kidney(){
//            //セルの文字色
////            cell.textLabel?.textColor = UIColor(red: 89/255, green: 211/255, blue: 102/255, alpha: 1.0)
//            //セルに入れる画像
//            cell.imageView?.image = UIImage(named:"orange-food24")
//        }
        
        if specieNumber == 0{
            switch foodNumber{
            case 0:
                showTextLabel(number: 0)
//                kidney()
                
                //            cell.textLabel?.text = foodlistArray[0][indexPath.row]
                
            case 1:
                showTextLabel(number: 1)
                //            cell.textLabel?.text = foodlistArray[1][indexPath.row]
                
            case 2:
                showTextLabel(number: 2)
                //            cell.textLabel?.text = foodlistArray[2][indexPath.row]
                
            case 3:
                showTextLabel(number: 3)
                //            cell.textLabel?.text = foodlistArray[3][indexPath.row]
                
            default:
                break
            }}
        else if specieNumber == 1 {
            switch foodNumber{
            case 0:
                showCatTextLabel(number: 0)
//                kidney()
            case 1:
                showCatTextLabel(number: 1)
                //                cell.textLabel?.text = catfoodlistArray[1][indexPath.row]
                
            case 2:
                showCatTextLabel(number: 2)
                //                cell.textLabel?.text = catfoodlistArray[2][indexPath.row]
                
            case 3:
                showCatTextLabel(number: 3)
                //                cell.textLabel?.text = catfoodlistArray[3][indexPath.row]
                
            default:
                break
            }}
        else {
            cell.textLabel?.text = ""
        }
        return cell
    }
    //送る値を格納する箱
    var detailName = ""
    var detailNameNumber:Int = 0
    //cellがクリックされたときのイベント
    //pageを遷移させる
    //index.rowの値を次のページに送る
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //ラベルに入っている数値によって遷移先に何のデータを渡すか場合分け｡
        func choseCell(num:Int){
            detailName = foodlistArray[num][indexPath.row]
            detailNameNumber = indexPath.row
        }
        
        func choseCatCell(num:Int){
            detailName = catfoodlistArray[num][indexPath.row]
            detailNameNumber = indexPath.row
        }
        
        if specieNumber == 0{
            switch foodNumber{
            case 0:
                choseCell(num: 0)
            case 1:
                choseCell(num: 1)
            case 2:
                choseCell(num: 2)
            case 3:
                choseCell(num: 3)
            default:
                detailName = "error"
            }
            //        detailName = foodlistArray[0][indexPath.row]
        }
        else if specieNumber == 1{
            switch foodNumber{
            case 0:
                choseCatCell(num: 0)
            case 1:
                choseCatCell(num: 1)
            case 2:
                choseCatCell(num: 2)
            case 3:
                choseCatCell(num: 3)
            default:
                detailName = "error"
            }
            //        detailName = catfoodlistArray[0][indexPath.row]
        }
        
        //ページ遷移
        //    let storyboard:UIStoryboard = self.storyboard!
        //    let nextView = storyboard.instantiateViewController(withIdentifier: "details") as! detailsViewController
        //    self.present(nextView, animated: true, completion: nil)
        performSegue(withIdentifier: "detailSegue",sender: nil)
    }
    
    //画面遷移時に値を遷移先に送る
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "detailSegue"){
            //遷移先ページをインスタンス化する
            let detailsView : detailsViewController = segue.destination as! detailsViewController
            detailsView.titleLabel = detailName
            detailsView.titleNumber = detailNameNumber
            detailsView.secondFoodNumber = foodNumber
            detailsView.secondSpecieNumber = specieNumber
        }
    }
    //遷移元ページから値を受け取る変数
    var sendSpecie = ""
    var sendFood = ""
    
    //遷移元から配列のインデックス番号を受け取る変数
    var specieNumber:Int = 0
    var foodNumber:Int = 0
    
    //ラベルの色の入れ物
    var speciesBackground = UIColor.white
    
    //navigation barの色
    var navigationBackgroundColor = UIColor.white
    //navigation barの背景色
    var navigationBarColor = UIColor.white
    
    //viewの背景色
    var viewColor = UIColor.white
    var topViewColor = UIColor.white
    
    //色の変数
    var greenColor = UIColor(red: 89/255, green: 211/255, blue: 102/255, alpha: 1.0)
    var liteGreenColor = UIColor(red: 89/255, green: 211/255, blue: 102/255, alpha: 0.7)
    var whiteColor = UIColor.white
    
    //色決めをまとめた関数
    func choiceColor(color:UIColor){
        navigationBarColor = color
        viewColor = color
        
    }
    
    //薄い色用
    func secondChoiceColor(liteColor:UIColor){
        topViewColor = liteColor
    }
    
    //navigation barとviewの背景色の関数
    func navigationBar(){
        switch foodNumber {
        case 0:
            choiceColor(color: greenColor)
            secondChoiceColor(liteColor:liteGreenColor )
//            navigationBarColor = UIColor(red: 89/255, green: 211/255, blue: 102/255, alpha: 1.0)
//            viewColor = UIColor(red: 89/255, green: 211/255, blue: 102/255, alpha: 1.0)
//            topViewColor = UIColor(red: 89/255, green: 211/255, blue: 102/255, alpha: 0.7)
        default:
            choiceColor(color: whiteColor)
            secondChoiceColor(liteColor: whiteColor)
//            navigationBarColor = UIColor.white
//            viewColor = UIColor.white
//            topViewColor = UIColor.white
        }
    }
    
    //foodlistを入れる配列
    //犬
    var foodlistArray:[[String]] = [/*腎臓*/["腎臓サポート","腎臓サポート セレクション","腎臓サポート+低分子プロテイン","ユリナリーS/O","心臓サポート1+関節サポート","心臓サポート2","関節サポート","k/d","キドニーケア"],/*膀胱･尿路*/["pHコントロール","pHコントロール スペシャル","pHコントロール ライト","pHコントロールV2+低分子プロテイン","pHコントロールV2+満腹感サポート","満腹感サポートスペシャル+CLT","c/d","u/d","メタボリックス+ユリナリー","尿石ケア","ストラバイトケア"],/*皮膚*/["スキンサポート","低分子プロテイン","低分子プロテイン ライト","満腹感サポート+低分子プロテイン","アミノペプチドフォーミュラ","セレクトプロテイン(ダック&タピオカ)","セレクトプロテイン(フィッシュ&ポテト)","セレクトプロテイン(カンガルー&オーツ)","ダームディフェンス","d/d(サーモン&ポテト)","d/d(ダック&ポテト)","z/d(低アレルゲン)","z/d(ウルトラ)","アミノプロテクトケア"],/*消化器*/["消化器サポート(低脂肪)","消化器サポート(高繊維)","消化器サポート(高栄養)","i/d(コンフォート)","i/d(ローファット)"]]
    
    //猫
    var catfoodlistArray:[[String]] = [/*腎臓*/["腎臓サポート","腎臓サポート セレクション","腎臓サポート スペシャル","ユリナリーS/O エイジング","腎臓ケア k/d ツナ チキン","キドニーケア"],/*膀胱･尿路*/["pHコントロール0","pHコントロール1","pHコントロール2","pHコントロール オルファクトリー","pHコントロール ライト","pHコントロール+満腹感サポート","pHコントロール+CLT","満腹感サポート+CLT"],/*皮膚*/["低分子プロテイン","セレクトプロテイン(ダック&ライス)","アミノペプチドフォーミュラ","z/d(低アレルゲン)"],/*消化器*/["消化器サポート","消化器サポート(可溶性繊維)","i/d"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //backButtonのテキストカラー
        //setTitleColorを使う｡Outletを設定しておく｡
        backButtonText.setTitleColor(UIColor.black, for: .normal)
        
        //背景色の関数
        labelBackground()
        //navigation barの設定
        navigationBar()
        
        //ラベルの背景色
        //        chosenSpecie.backgroundColor = speciesBackground
        //viewの背景色
        colorView.backgroundColor = UIColor.white
        topColorView.backgroundColor = UIColor.init(red: 255/255, green: 85/255, blue: 32/255, alpha: 1.0)/*topViewColor*/
        
        //backGrondColorじゃなくてbarTintColorにする
//        foodNavigationBar.barTintColor = UIColor.init(red: 255/255, green: 85/255, blue: 32/255, alpha: 1.0)/*navigationBarColor*/
        //遷移元の値をラベルに入れる
        chosenSpecie.text = sendSpecie
        chosenFood.text = sendFood
        
        //tableviewの余計な部分を消す
        foodListTableView.tableFooterView = UIView()
        
        //忘れてた↓
        foodListTableView.delegate = self
        foodListTableView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        //遷移元の値をラベルに入れる
        chosenSpecie.text = sendSpecie
        chosenFood.text = sendFood
        
    }
    
    @IBOutlet weak var foodListTableView: UITableView!
    
    @IBOutlet weak var chosenSpecie: UILabel!
    @IBOutlet weak var chosenFood: UILabel!
    
    @IBAction func labelReturnButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        //        let storyboard:UIStoryboard = self.storyboard!
        //        let nextView = storyboard.instantiateViewController(withIdentifier: "petFood") as! petFoodViewController
        //        self.present(nextView, animated: true, completion: nil)
    }
    @IBAction func labelMenuReturnButton(_ sender: Any) {
        let storyboard:UIStoryboard = self.storyboard!
        let nextView = storyboard.instantiateViewController(withIdentifier: "Menu") as! MenuViewController
        self.present(nextView, animated: true, completion: nil)
    }
    
    @IBOutlet weak var foodNavigationBar: UINavigationBar!
    
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var topColorView: UIView!
    
    @IBAction func backButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBOutlet weak var backButtonText: UIButton!
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
