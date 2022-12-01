
//
//  ViewController.swift
//  navigationPractice
//
//  Created by MD Faizan on 29/11/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func btnDetailVc(_ sender: UIButton) {
        
        let DetailVC  = self.storyboard?.instantiateViewController(withIdentifier: "DetailsViewController") as! DetailsViewController
        DetailVC.title = "DetailsViewController"
        self.navigationController?.pushViewController(DetailVC, animated: true)
    }
    
   
}

