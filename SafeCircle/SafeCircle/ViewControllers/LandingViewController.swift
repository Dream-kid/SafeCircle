//
//  LandingViewController.swift
//

import UIKit

class LandingViewController: UIViewController {
    
    @IBOutlet weak var notificationView: UIView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.updateView()
    }
    private func updateView(){
        self.notificationView.roundBothCorner(30.0)
    }
}
