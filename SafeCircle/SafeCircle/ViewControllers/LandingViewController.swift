//
//  LandingViewController.swift
//

import UIKit

class LandingViewController: UIViewController {
    
    @IBOutlet weak var notificationView: UIView!
    @IBOutlet weak var manageProfile: UIView!
    @IBOutlet weak var locationView: UIView!
    @IBOutlet weak var videoView: UIView!
    @IBOutlet weak var patientView: UIView!
    @IBOutlet weak var sosView: UIView!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.updateView()
    }
    private func updateView(){
        self.notificationView.roundBothCorner(30.0)
        self.manageProfile.roundBothCorner(30.0)
        self.locationView.roundBothCorner(30.0)
        self.videoView.roundBothCorner(30.0)
        self.sosView.roundBothCorner(30.0)
        self.patientView.roundBothCorner(30.0)

    }
}
