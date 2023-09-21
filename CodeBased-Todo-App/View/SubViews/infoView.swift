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
    
    init(count: Int = 0, text: String = "") { // 재사용 가능한 형식으로 생성자 정의
        super.init(frame: .zero)
        
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
