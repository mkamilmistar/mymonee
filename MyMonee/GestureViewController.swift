//
//  GestureViewController.swift
//  MyMonee
//
//  Created by MacBook on 07/05/21.
//

import UIKit

class GestureViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func handleTapRemove(_ gesture: UITapGestureRecognizer, forEvent event: UIEvent){
        
        let alert = UIAlertController(title: "Menghapus Impian", message: "Apakah anda yakin menghapus \"Membeli Mobil\" ?", preferredStyle: .alert)
        
        let deleteButton = UIAlertAction(title: "Hapus", style: .destructive)
        let cancelButton = UIAlertAction(title: "Batal", style: .cancel)
        
        alert.addAction(cancelButton)
        alert.addAction(deleteButton)
        
        self.present(alert, animated: true, completion: nil)
    }
    
}
