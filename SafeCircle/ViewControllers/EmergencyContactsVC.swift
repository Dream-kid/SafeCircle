//
//  patientsProfileVC.swift
//

import UIKit

class EmergencyContactsVC: UIViewController {
 
    @IBOutlet weak var surroundView: UIView!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.updateUI()
      
    }
    private func updateUI(){
        self.surroundView.layer.cornerRadius = 14
    }
   
}
