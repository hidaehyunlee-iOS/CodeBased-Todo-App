//
//  ProfileDesignView.swift
//  CodeBased-Todo-App
//
//  Created by daelee on 2023/09/20.
//

import UIKit

class ProfileDesignView: UIViewController {

    private struct Constant {
        static var userNamePadding = 10
    }
    
    private struct ConstantString {
        static var userNameText = "nabaecamp"
    }
    
    lazy var userNameLabel = {
        let label = UILabel()
        
        label.text = ConstantString.userNameText
        return label
    }()
    
    lazy var menuButton = {
        let button = UIButton()
        
        button.setImage(UIImage(systemName: "line.3.horizontal"), for: .normal)
        return button
    }()
    
    lazy var userPic = {
        let imageView = UIImageView()
        
        imageView.image = UIImage(named: "Ellipse 1")
        return imageView
    }()
    
    lazy var userPostInfo = {
        let infoView = InfoView(frame: .zero)
        return infoView
    }()
    
    lazy var userFollowerInfo = {
        let infoView = InfoView(frame: .zero)
        return infoView
    }()
    
    lazy var userFollowingInfo = {
        let infoView = InfoView(frame: .zero)
        return infoView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    private func setupUI() {
        self.view.addSubview(userNameLabel)
        self.view.addSubview(menuButton)
        self.view.addSubview(userPic)
        self.view.addSubview(userPostInfo)
        self.view.addSubview(userFollowerInfo)
        self.view.addSubview(userFollowingInfo)
        
        self.userNameLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(self.view.safeAreaInsets).offset(Constant.userNamePadding)
        }
        
        self.menuButton.snp.makeConstraints { make in
            make.centerY.equalTo(self.userNameLabel)
            make.right.equalTo(userNameLabel.snp.bottom)
        }
    }

}
