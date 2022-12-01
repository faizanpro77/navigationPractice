//
//  FourthViewController.swift
//  navigationPractice
//
//  Created by MD Faizan on 29/11/22.
//

import UIKit

class FourthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "DetailsViewControlle99"

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        title = "DetailsViewControlle99"
        navigationController?.title = "DetailsViewControlle88"
        navigationItem.title = "DetailsViewControlle77"
    }
    

  
    @IBAction func btnDetailVC(_ sender: UIButton) {
            backToPavellian()
    }
    
    private func backToPavellian() {
        navigationController?.popToViewController(ofClass: DetailsViewController.self)
    }
}

extension UINavigationController {
  func popToViewController(ofClass: AnyClass, animated: Bool = true) {
    if let vc = viewControllers.last(where: { $0.isKind(of: ofClass) }) {
      popToViewController(vc, animated: animated)
    }
  }
}
