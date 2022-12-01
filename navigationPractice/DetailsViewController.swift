//
//  DetailsViewController.swift
//  navigationPractice
//
//  Created by MD Faizan on 29/11/22.
//

import UIKit

class DetailsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func btnHomeClick(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    

    @IBAction func btnThirdVCClick(_ sender: UIButton) {
    
        let thirdVC = self.storyboard?.instantiateViewController(withIdentifier: "ThirdViewController") as! ThirdViewController
        thirdVC.title = "ThirdViewController"
        
        
        
        let backItem = UIBarButtonItem()
        backItem.title = "go to back"
        navigationItem.backBarButtonItem = backItem
        
        navigationController?.pushViewController(thirdVC, animated: true)
    }
    
    
    @IBAction func btnFourthScreen(_ sender: UIButton) {
        print("go to fourth screen")
        let fourthVC1 = self.storyboard?.instantiateViewController(withIdentifier: "FourthViewController") as! FourthViewController
        navigationController?.pushViewController(fourthVC1, animated: true)
    }
    
}
