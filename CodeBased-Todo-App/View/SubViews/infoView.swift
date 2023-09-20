//
//  InfoView.swift
//  CodeBased-Todo-App
//
//  Created by daelee on 2023/09/20.
//

import UIKit
import SnapKit

class InfoView: UIView {
    var count: Int = 0
    var text: String = ""
    
    lazy var infoCount = {
        let label = UILabel()
        
        label.text = String(count)
        return label
    }()
    
    lazy var infoText = {
        let label = UILabel()
        
        label.text = text
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(infoCount)
        self.addSubview(infoText)
        
        infoCount.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview()
        }
        
        infoText.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalTo(infoCount.snp.bottom)
        }
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
