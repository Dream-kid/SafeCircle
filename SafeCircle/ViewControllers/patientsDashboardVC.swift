//
//  patientsProfileVC.swift
//

import UIKit

class patientsDashboardVC: UIViewController {
 
    @IBOutlet weak var surroundView: UIView!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.updateUI()
      
    }
    private func updateUI(){
        self.surroundView.layer.cornerRadius = 14
    }
   
}
