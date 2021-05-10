//
//  HistoryTableViewController.swift
//  MyMonee
//
//  Created by MacBook on 09/05/21.
//

import Foundation
import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var historyTableView: UITableView!
    
    
    @IBOutlet var notFoundView: NotFoundView!
    
    let historyTitle = ["Bayar Listrik", "Gaji"]
    
    let historyDate = ["1 Mei 2021 - 19.30", "1 Mei 2021 - 08.00"]
    
    let historyBalance = [Amount(total: "-Rp 256.000", uiColor: UIColor.systemRed),
                          Amount(total: "+Rp 1.250.000", uiColor: UIColor.systemGreen)]
    
    let icon = ["arrow_downward_24px", "arrow_upward_24px"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        notFoundView.image.image = UIImage(named: "muka")
        notFoundView.label.text = "Wah! Data tidak ditemukan"
        
        let nib = UINib(nibName: "HistoryTableViewCell", bundle: nil)
        
        historyTableView.register(nib, forCellReuseIdentifier: "HistoryTableViewCell")
        
        historyTableView.delegate = self
        historyTableView.dataSource = self
        historyTableView.separatorStyle = .none
        historyTableView.backgroundColor = UIColor.systemGray5
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return historyTitle.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let historyCell = tableView.dequeueReusableCell(withIdentifier: "HistoryTableViewCell", for: indexPath) as! HistoryTableViewCell
        
        historyCell.historyTitle.text = historyTitle[indexPath.row]
        historyCell.historyDate.text = historyDate[indexPath.row]
        historyCell.historyBalance.text = historyBalance[indexPath.row].total
        historyCell.historyBalance.textColor = historyBalance[indexPath.row].uiColor
        historyCell.imgaeStatus.image = UIImage(named: icon[indexPath.row])
        
        return historyCell
    }
    
    
}

class Amount{
    let total: String
    let uiColor: UIColor
    
    init(total: String, uiColor: UIColor) {
        self.total = total
        self.uiColor = uiColor
    }
}

struct History {
    let historyTitle: String
    
    let historyDate: String
    
    let historyBalance: Amount
    
    let icon: String
    
    init(historyTitle: String, historyDate: String, historyBalance: Amount, icon: String) {
        self.historyTitle = historyTitle
        self.historyDate = historyDate
        self.historyBalance = historyBalance
        self.icon = icon
    }
}
