//
//  BaseCenterTitleViewController.swift
//  Zatch
//
//  Created by 박지윤 on 2022/09/16.
//

import UIKit

class BaseCenterTitleViewController: BaseViewController{

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        navigationView.addSubview(navigationTitle)
        
        navigationTitle.snp.makeConstraints{
            $0.centerY.centerX.equalToSuperview()
        }
    }
}
