//
//  SceneDelegate.swift

//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = self.getInitialVC()
            self.window = window
            window.makeKeyAndVisible()
        }
        
        guard let _ = (scene as? UIWindowScene) else { return }
    }
    
    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }
    
    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }
    
    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }
    
    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }
    
    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }
    
    
}

extension SceneDelegate {
    
    private func getInitialVC() -> UIViewController {
        self.openRegisterVC()
    }
    private func openCareGiverprofileVC() -> UIViewController {

        let landingStoryboard = UIStoryboard(name: "careGiverProfile", bundle: nil)
        let landingVC = landingStoryboard.instantiateViewController(withIdentifier: "careGiverProfileVC") as! careGiverProfileVC
        let navController = UINavigationController(rootViewController: landingVC)
        navController.navigationBar.isHidden = true
        return navController
        
    }
    private func openPatientDAshboardVC() -> UIViewController {

        let landingStoryboard = UIStoryboard(name: "patientsDashboard", bundle: nil)
        let landingVC = landingStoryboard.instantiateViewController(withIdentifier: "patientsDashboardVC") as! patientsDashboardVC
        let navController = UINavigationController(rootViewController: landingVC)
        navController.navigationBar.isHidden = true
        return navController
        
    }
    private func openSosBtnVC() -> UIViewController {

        let landingStoryboard = UIStoryboard(name: "SosBtn", bundle: nil)
        let landingVC = landingStoryboard.instantiateViewController(withIdentifier: "SosBtnVC") as! SosBtnVC
        let navController = UINavigationController(rootViewController: landingVC)
        navController.navigationBar.isHidden = true
        return navController
        
    }
    private func opoenEmergencyContactsVC() -> UIViewController {

        let landingStoryboard = UIStoryboard(name: "EmergencyContacts", bundle: nil)
        let landingVC = landingStoryboard.instantiateViewController(withIdentifier: "EmergencyContactsVC") as! EmergencyContactsVC
        let navController = UINavigationController(rootViewController: landingVC)
        navController.navigationBar.isHidden = true
        return navController
        
    }
    private func openVideoListVC() -> UIViewController {

        let landingStoryboard = UIStoryboard(name: "videoList", bundle: nil)
        let landingVC = landingStoryboard.instantiateViewController(withIdentifier: "videoListVc") as! videoListVc
        let navController = UINavigationController(rootViewController: landingVC)
        navController.navigationBar.isHidden = true
        return navController
        
    }
    private func openPatientsProfileVC() -> UIViewController {

        let landingStoryboard = UIStoryboard(name: "patientsProfile", bundle: nil)
        let landingVC = landingStoryboard.instantiateViewController(withIdentifier: "patientsProfileVC") as! patientsProfileVC
        let navController = UINavigationController(rootViewController: landingVC)
        navController.navigationBar.isHidden = true
        return navController
        
    }
    private func openLandingVC() -> UIViewController {

        let landingStoryboard = UIStoryboard(name: "Landing", bundle: nil)
        let landingVC = landingStoryboard.instantiateViewController(withIdentifier: "LandingViewController") as! LandingViewController
        let navController = UINavigationController(rootViewController: landingVC)
        navController.navigationBar.isHidden = true
        return navController
        
    }
    private func openLogInVC() -> UIViewController {

        let landingStoryboard = UIStoryboard(name: "Login", bundle: nil)
        let landingVC = landingStoryboard.instantiateViewController(withIdentifier: "LoginVC") as! LoginVC
        let navController = UINavigationController(rootViewController: landingVC)
        navController.navigationBar.isHidden = true
        return navController
        
    }
    private func openRegisterVC() -> UIViewController {

        let landingStoryboard = UIStoryboard(name: "Register", bundle: nil)
        let landingVC = landingStoryboard.instantiateViewController(withIdentifier: "RegisterVC") as! RegisterVC
        let navController = UINavigationController(rootViewController: landingVC)
        navController.navigationBar.isHidden = true
        return navController
        
    }
}
