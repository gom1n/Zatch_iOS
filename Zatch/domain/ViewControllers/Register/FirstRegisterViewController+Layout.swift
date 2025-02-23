//
//  File.swift
//  Zatch
//
//  Created by 박지윤 on 2022/08/10.
//

import Foundation

extension FirstRegisterViewController{
    
    func setInitView(){
        
        backTableView = UITableView().then{
            
            $0.delegate = self
            $0.dataSource = self

            $0.separatorStyle = .none
            $0.showsVerticalScrollIndicator = false
            $0.isScrollEnabled = false
            
            $0.register(CategorySelectTableViewCell.self, forCellReuseIdentifier: CategorySelectTableViewCell.cellIdentifier)
            $0.register(ProductInputTextFieldTabeViewCell.self, forCellReuseIdentifier: ProductInputTextFieldTabeViewCell.cellIdentifier)
            $0.register(ImageAddTableViewCell.self, forCellReuseIdentifier: ImageAddTableViewCell.cellIdentifier)
            $0.register(FirstProductInfoTableViewCell.self, forCellReuseIdentifier: FirstProductInfoTableViewCell.cellIdentifier)
        }
    }
    
    func setUpView(){
        self.view.addSubview(topView)
        self.view.addSubview(backTableView)
        self.view.addSubview(nextButton)
    }
    
    func setUpConstraint(){
        
        topView.snp.makeConstraints{ make in
            make.width.equalToSuperview()
            make.top.equalToSuperview().offset(88)
            make.leading.trailing.equalToSuperview()
        }
        
        backTableView.snp.makeConstraints{ make in
            make.width.equalToSuperview()
            make.top.equalTo(topView.snp.bottom)
            make.bottom.equalTo(nextButton.snp.top).offset(-5)
        }
        
        nextButton.snp.makeConstraints{ make in
            make.leading.equalToSuperview().offset(74)
            make.trailing.equalToSuperview().offset(-74)
            make.centerX.equalToSuperview()
            make.bottom.equalTo(self.view.safeAreaLayoutGuide).offset(-40)
            make.top.equalTo(backTableView.snp.bottom).offset(40)
        }
    }
    
}
