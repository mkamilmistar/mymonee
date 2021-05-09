//
//  TableViewController.swift
//  MyMonee
//
//  Created by MacBook on 08/05/21.
//

import Foundation
import UIKit

class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet var tableView: UITableView!
    
    let dreamTitle = ["Membeli Mobil", "Membeli Airpods Baru", "Membeli Sepatu Adidas"]
    let nominal = ["IDR 999.000 / IDR 200.000.000", "IDR 999.000 / IDR 1.500.000", "IDR 999.000 / IDR 500.000"]
    let mantap: [Float] = [0.2, 0.5, 0.8]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "DreamTableViewCell", bundle: nil)
        
        tableView.register(nib, forCellReuseIdentifier: "DreamTableViewCell")
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dreamTitle.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let dreamCell = tableView.dequeueReusableCell(withIdentifier: "DreamTableViewCell", for: indexPath) as! DreamTableViewCell
        
        dreamCell.dreamTitle.text = dreamTitle[indexPath.row]
        dreamCell.money.text = nominal[indexPath.row]
        dreamCell.progress.progress = mantap[indexPath.row]
        
        
        return dreamCell
    }
    
    
}
