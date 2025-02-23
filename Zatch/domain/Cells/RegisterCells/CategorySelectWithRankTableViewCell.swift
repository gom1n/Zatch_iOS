//
//  CategorySelectWithRankTableViewCell.swift
//  Zatch
//
//  Created by 박지윤 on 2022/08/10.
//

import UIKit

class CategorySelectWithRankTableViewCell: CategorySelectTableViewCell {
    
    let rankLabel = UILabel().then{
        $0.font = UIFont.pretendard(size: 14, family: .Medium)
    }

    //MARK: - LifeCycle
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        setUpView()
        setUpConstriant()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Helper
    override func setUpView() {
        
        super.setUpView()
        
        baseView.addSubview(rankLabel)
    }
    
    override func setUpConstriant() {
        
        super.setUpConstriant()
        
        baseView.snp.makeConstraints{ make in
            make.height.equalTo(88)
        }
        
        rankLabel.snp.makeConstraints{ make in
            make.top.equalToSuperview().offset(20)
            make.leading.equalToSuperview().offset(36)
        }
        
        super.categoryFrame.snp.removeConstraints()
        
        categoryFrame.snp.makeConstraints{ make in
            make.top.equalTo(rankLabel.snp.bottom).offset(10)
            make.leading.trailing.bottom.equalToSuperview()
            make.height.equalTo(41)
        }
    }
    
}
