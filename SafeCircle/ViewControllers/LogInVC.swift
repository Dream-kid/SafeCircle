//
//  LandingViewController.swift
//

import UIKit

class LoginVC: UIViewController {
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var forgetPasswordLabel: UILabel!
    @IBOutlet weak var signInbutton: UIButton!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        loginLabel.attributedText = self.updateSignInLable(fullText: "Don't have an account? Register", subText: "Register")
        forgetPasswordLabel.attributedText = self.updateSignInLable(fullText: "Forget Password?", subText: "Forget Password?")
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
    }
}
