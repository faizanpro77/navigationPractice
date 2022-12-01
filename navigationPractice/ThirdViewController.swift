//
//  ThirdViewController.swift
//  navigationPractice
//
//  Created by MD Faizan on 29/11/22.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        let appearance = UINavigationBarAppearance()
//        appearance.titleTextAttributes = [.foregroundColor: UIColor.red]
//        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.red]
//
//        navigationItem.standardAppearance = appearance
//        navigationItem.scrollEdgeAppearance = appearance
       



        
}
    
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        let textAttributes = [NSAttributedString.Key.foregroundColor: UIColor.red]
//        navigationController?.navigationBar.titleTextAttributes = textAttributes
//    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.red]
        navigationController?.navigationBar.titleTextAttributes = textAttributes
        
    }
    
    

    
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.black]

    }
    
    @IBAction func btnDetailVCClick(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
        
    }
    
    
    
    @IBAction func btnHomeClick(_ sender: UIButton) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    
    @IBAction func btnfourthVC(_ sender: UIButton) {
        
        let fouthVC = self.storyboard?.instantiateViewController(withIdentifier: "FourthViewController") as! FourthViewController
        fouthVC.title = "FourthViewController9999"
        self.navigationController?.pushViewController(fouthVC, animated: true)
    }
    
    
    
}
