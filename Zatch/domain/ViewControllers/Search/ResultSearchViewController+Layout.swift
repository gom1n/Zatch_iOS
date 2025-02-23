//
//  File.swift
//  Zatch
//
//  Created by 박지윤 on 2022/08/07.
//

import Foundation

extension ResultSearchViewController{

    func setUpView(){

        self.view.addSubview(topView)
        
        self.topView.addSubview(myStackView)
        self.topView.addSubview(exchangeImage)
        self.topView.addSubview(wantStackView)
        
        self.myStackView.addArrangedSubview(myCategoryButton)
        self.myStackView.addArrangedSubview(myZatch)
    
        self.wantStackView.addArrangedSubview(wantCategoryButton)
        self.wantStackView.addArrangedSubview(wantZatch)
        
        self.topView.addSubview(myZatchTextField)
        self.topView.addSubview(wantZatchTextField)
        
        self.topView.addSubview(townFrame)
        townFrame.addArrangedSubview(townSelectedLabel)
        townFrame.addArrangedSubview(townSelectArrow)
        
        self.topView.addSubview(searchFrame)
        searchFrame.addArrangedSubview(searchFilterImage)
        searchFrame.addArrangedSubview(searchFilterLabel)
        
        self.view.addSubview(separateLine)
        self.view.addSubview(separateRectangle)
        
        self.view.addSubview(tableView)
        self.view.addSubview(emptyResultView)
    }
    
    func setUpConstraint(){
     
        self.topView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(88)
            make.height.equalTo(116)
            make.width.equalToSuperview()
        }
    
        self.exchangeImage.snp.makeConstraints { make in
            make.width.height.equalTo(24)
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(36)
        }
        
        self.myStackView.snp.makeConstraints { make in
            make.trailing.equalTo(exchangeImage.snp.leading).offset(-12)
            make.bottom.equalTo(exchangeImage)
            make.top.equalToSuperview().offset(8)
            make.leading.equalToSuperview().offset(20)
        }
        
        self.myZatch.snp.makeConstraints{ make in
            make.height.equalTo(20)
            make.leading.trailing.equalToSuperview()
        }
        
        self.myZatchTextField.snp.makeConstraints{ make in
            make.height.equalTo(32)
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalTo(exchangeImage.snp.leading).offset(-12)
            make.top.equalTo(myCategoryButton.snp.bottom).offset(8)
            make.bottom.equalToSuperview().offset(-52)
        }

        self.wantStackView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(8)
            make.leading.equalTo(exchangeImage.snp.trailing).offset(12)
            make.bottom.equalTo(exchangeImage)
            make.trailing.equalToSuperview().offset(-20)
        }
        
        self.wantZatch.snp.makeConstraints{ make in
            make.height.equalTo(20)
            make.leading.trailing.equalToSuperview()
        }
        
        self.wantZatchTextField.snp.makeConstraints{ make in
            make.height.equalTo(32)
            make.trailing.equalToSuperview().offset(-20)
            make.leading.equalTo(exchangeImage.snp.trailing).offset(12)
            make.top.equalTo(wantCategoryButton.snp.bottom).offset(8)
            make.bottom.equalToSuperview().offset(-52)
        }
        
        self.townFrame.snp.makeConstraints{ make in
            make.leading.equalToSuperview().offset(16)
            make.bottom.equalToSuperview().offset(-12)
        }
        
        self.townSelectArrow.snp.makeConstraints{ make in
            make.height.width.equalTo(20)
        }
        
        self.searchFrame.snp.makeConstraints{ make in
            make.trailing.equalToSuperview().offset(-16)
            make.bottom.equalToSuperview().offset(-12)
        }
        
        self.searchFilterImage.snp.makeConstraints{ make in
            make.height.width.equalTo(20)
        }
        
        self.separateLine.snp.makeConstraints{ make in
            make.height.equalTo(1)
            make.top.equalTo(topView.snp.bottom)
            make.leading.trailing.equalToSuperview()
        }
        
        self.separateRectangle.snp.makeConstraints{ make in
            make.height.equalTo(8)
            make.top.equalTo(separateLine.snp.bottom)
            make.leading.trailing.equalToSuperview()
        }
        
        self.tableView.snp.makeConstraints{ make in
            make.top.equalTo(separateRectangle.snp.bottom)
            make.leading.trailing.bottom.equalToSuperview()
        }
        
        self.emptyResultView.snp.makeConstraints{ make in
            make.top.bottom.leading.trailing.equalTo(tableView)
        }
        
    }
}
