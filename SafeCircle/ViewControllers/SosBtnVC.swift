//
//  patientsProfileVC.swift
//

import UIKit

class SosBtnVC: UIViewController {
 
    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var middleView: UIView!
    @IBOutlet weak var topView: UIView!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.topView.layer.cornerRadius = 30
        self.bottomView.layer.cornerRadius = 16
        self.middleView.layer.cornerRadius = 16
      
    }
    
}
