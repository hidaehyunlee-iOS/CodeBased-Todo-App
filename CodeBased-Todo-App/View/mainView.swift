//
//  mainView.swift
//  CodeBased-Todo-App
//
//  Created by daelee on 2023/09/19.
//

import UIKit

class mainView: UIViewController {

    @IBAction func goToProfileDesignView(_ sender: UIButton) {
        let nextView = ProfileDesignView()
        
        nextView.modalPresentationStyle = .fullScreen
        self.present(nextView, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

