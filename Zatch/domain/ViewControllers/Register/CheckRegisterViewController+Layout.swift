//
//  File.swift
//  Zatch
//
//  Created by 박지윤 on 2022/08/11.
//

import Foundation

extension CheckRegisterViewController{
    
    func setInitView(){
        
        photoCollectionView = UICollectionView(frame: .zero, collectionViewLayout: .init()).then{
            
            let flowLayout = UICollectionViewFlowLayout()
            flowLayout.itemSize = CGSize(width: 84, height: 84)
            flowLayout.minimumInteritemSpacing = 10
            flowLayout.scrollDirection = .horizontal
            
            $0.delegate = self
            $0.dataSource = self
            
            $0.collectionViewLayout = flowLayout
            $0.showsHorizontalScrollIndicator = false
            $0.contentInset = UIEdgeInsets(top: 0, left: 36, bottom: 0, right: 20)
            
            $0.register(ImageRegisterCollectionViewCell.self, forCellWithReuseIdentifier: ImageRegisterCollectionViewCell.cellIdentifier)
        }
        
        addExplainTextView = UITextView().then{
            $0.layer.borderColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.1).cgColor
            $0.layer.borderWidth = 1
            $0.layer.cornerRadius = 8
            
            $0.delegate = self
            
            $0.text = placeHolder
            $0.setTextWithLineHeight(lineHeight: 15.6)
            $0.textColor = .black20
            $0.font = UIFont.pretendard(size: 12, family: .Medium)
            $0.textContainerInset = UIEdgeInsets(top: 23, left: 17, bottom: 23, right: 25)
        }
    }
    
    func setUpView(){
        self.view.addSubview(exitBtn)
        self.view.addSubview(titleView)
        self.view.addSubview(registerBtn)
        self.view.addSubview(photoFrame)
        self.view.addSubview(infoFrame)
        
        self.photoFrame.addSubview(photoTitle)
        self.photoFrame.addSubview(photoCollectionView)
        
        self.view.addSubview(addTitle)
        self.view.addSubview(addExplainTextView)
    }
    
    func setUpConstraint(){
        
        exitBtn.snp.makeConstraints{ make in
            make.trailing.equalToSuperview().offset(-16)
            make.centerY.equalTo(super.backBtn)
        }
        
        titleView.snp.makeConstraints{ make in
            make.top.equalToSuperview().offset(88)
        }
        
        photoFrame.snp.makeConstraints{ make in
            make.top.equalTo(titleView.snp.bottom)
            make.leading.equalToSuperview()
            make.height.equalTo(129)
            make.trailing.equalToSuperview()
        }
        
        photoTitle.snp.makeConstraints{ make in
            make.leading.equalToSuperview().offset(36)
            make.top.equalToSuperview().offset(9)
            make.height.equalTo(17)
        }
        
        photoCollectionView.snp.makeConstraints{ make in
            make.top.equalTo(photoTitle.snp.bottom).offset(19)
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(84)
            make.bottom.equalToSuperview()
        }
        
        infoFrame.snp.makeConstraints{ make in
            make.top.equalTo(photoFrame.snp.bottom)
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(166)
        }
        
        addTitle.snp.makeConstraints{ make in
            make.leading.equalToSuperview().offset(36)
            make.top.equalTo(infoFrame.snp.bottom).offset(18)
            make.height.equalTo(17)
        }
        
        addExplainTextView.snp.makeConstraints{ make in
            make.top.equalTo(addTitle.snp.bottom).offset(11)
            make.leading.equalToSuperview().offset(24)
            make.trailing.equalToSuperview().offset(-24)
            make.bottom.equalToSuperview().offset(-157)
        }
        
        registerBtn.snp.makeConstraints{ make in
            make.bottom.equalTo(self.view.safeAreaLayoutGuide).offset(-40)
            make.leading.equalToSuperview().offset(74)
            make.trailing.equalToSuperview().offset(-74)
        }
    }
}
