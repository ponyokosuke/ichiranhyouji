//
//  ViewController.swift
//  一覧表示
//
//  Created by 山下幸助 on 2023/06/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "customCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! TableViewCell
        let randomInt = Int.random(in: 1..<100)
        var change:Int = 0
        if randomInt >= 50{
            change = 1
        }
        let random = String(randomInt)
        cell.number.text = random
        if change == 1{
            //cell.number.textColor(UIColor(red: 255/255, green: 1/255, blue: 1/255, alpha: 1))
            cell.number.textColor = UIColor.red
        }
            return cell
    }


}

