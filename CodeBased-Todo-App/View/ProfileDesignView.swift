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
        button.addTarget(self, action: #selector(menuButtonTapped), for: .touchUpInside)

        return button
    }()
    
    lazy var userPic = {
        let imageView = UIImageView()
        
        imageView.image = UIImage(named: "Ellipse 1")
        return imageView
    }()
    
    lazy var userPostInfo = {
        let infoView = InfoView(text: "post")
        
        return infoView
    }()
    
    lazy var userFollowerInfo = {
        let infoView = InfoView(text: "follower")

        return infoView
    }()
    
    lazy var userFollowingInfo = {
        let infoView = InfoView(text: "following")

        return infoView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setupUI()
    }
    
    @objc
    func menuButtonTapped() {
        self.dismiss(animated: true, completion: nil) // 메뉴버튼에, 임시로 화면 닫기(present 한 현재 뷰 dismiss) 기능 할당함
    }
    

    private func setupUI() {
        self.view.addSubview(userNameLabel)
        self.view.addSubview(menuButton)
        self.view.addSubview(userPic)
        
        let userFollowInfo = UIView()
        
        self.view.addSubview(userFollowInfo)
        userFollowInfo.addSubview(userPostInfo)
        userFollowInfo.addSubview(userFollowerInfo)
        userFollowInfo.addSubview(userFollowingInfo)
        
        
        self.userNameLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(self.view.safeAreaLayoutGuide).offset(Constant.userNamePadding)
        }
        
        self.menuButton.snp.makeConstraints { make in
            make.centerY.equalTo(self.userNameLabel)
            make.right.equalToSuperview().offset(-16)
        }
        
        self.userPic.snp.makeConstraints { make in
            make.top.equalTo(userNameLabel.snp.bottom).offset(14)
            make.left.equalToSuperview().offset(14)
            make.width.height.equalTo(88)
        }
        
        userFollowerInfo.snp.makeConstraints { make in
            make.centerX.equalTo(self.userPic)
            make.right.equalToSuperview().offset(-28)
        }
    }

}
