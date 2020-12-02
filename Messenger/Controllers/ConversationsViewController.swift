//
//  ViewController.swift
//  Messenger
//
//  Created by Cristina Bolohan on 14.11.20.
//

import UIKit
import FirebaseAuth

class ConversationsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        validateAuth()
        
    }
    
    func validateAuth(){

        if FirebaseAuth.Auth.auth().currentUser == nil {
            let vc = LoginViewController()
            let nav = UINavigationController(rootViewController: vc)

            nav.modalPresentationStyle = .fullScreen
            present(nav, animated: true)
        }
    }
}

