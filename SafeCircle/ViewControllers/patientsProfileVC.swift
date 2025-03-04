//
//  patientsProfileVC.swift
//

import UIKit

class patientsProfileVC: UIViewController {
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var confirmPasswordTF: UITextField!
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var signInbutton: UIButton!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        loginLabel.attributedText = self.updateSignInLable(fullText: "Already have an account? Sign in", subText: "Sign in")
        self.updateUI()
    }
    private func updateSignInLable(fullText: String, subText: String) -> NSAttributedString{
        let attributedString = NSMutableAttributedString(string: fullText)
        let registerRange = (fullText as NSString).range(of: subText)
        attributedString.addAttribute(.foregroundColor, value: UIColor(red: 0.00, green: 0.29, blue: 0.68, alpha: 1.00), range: registerRange)
        attributedString.addAttribute(.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: registerRange)
        return attributedString
    }
    private func updateUI(){
        self.signInbutton.roundBothCorner(16)
        self.emailTextField.layer.borderWidth = 2
        self.emailTextField.layer.borderColor = UIColor.black.cgColor
        self.passwordTextField.layer.borderWidth = 2
        self.passwordTextField.layer.borderColor = UIColor.black.cgColor
        
        self.confirmPasswordTF.layer.borderWidth = 2
        self.confirmPasswordTF.layer.borderColor = UIColor.black.cgColor
        self.nameTF.layer.borderWidth = 2
        self.nameTF.layer.borderColor = UIColor.black.cgColor
    }
}
