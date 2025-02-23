//
//  WantZatchBottomSheet.swift
//  Zatch
//
//  Created by 박지윤 on 2022/08/07.
//

import UIKit

class WantZatchBottomSheet: SearchTagBottomSheet {

    override func viewDidLoad() {
        super.viewDidLoad()

        super.titleLabel.text = "내가 찾는 재치"
        
        super.tagData = ["타이머","안경닦이","호랑이 인형","램프","2022 달력", "미니 가습기","마우스 패드"]
        
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(WantTagSearchResultCollectionViewCell.self, forCellWithReuseIdentifier: WantTagSearchResultCollectionViewCell.cellIdentifier)
    }

}

extension WantZatchBottomSheet: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.tagData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: WantTagSearchResultCollectionViewCell.cellIdentifier, for: indexPath) as? WantTagSearchResultCollectionViewCell else{
            fatalError()
        }
        cell.tagBtn.text = tagData[indexPath.row]
        cell.setTagColorInit()
        indexPath.row == currentTag ? cell.setTagColorSelect() : cell.setTagColorInit()
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        let title = tagData[indexPath.row]
        let tmpLabel = UILabel().then{
            $0.text = title
            $0.numberOfLines = 1
            $0.sizeToFit()
        }

        let width = tmpLabel.frame.size.width

        return CGSize(width: width + 12, height: 28)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        selectCompleteHandelr!(tagData[indexPath.row], indexPath.row)
        self.dismiss(animated: true, completion: nil)
    }
    
}
