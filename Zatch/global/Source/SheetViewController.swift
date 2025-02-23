//
//  SheetViewController.swift
//  Zatch
//
//  Created by 박지윤 on 2022/08/07.
//

import UIKit

class SheetViewController: UIViewController, UIViewControllerTransitioningDelegate {
    
    //MARK: - Properties
    
    //safe area height 하단 -> 34
    enum BottomSheetSize: CGFloat{
        case SearchTag = 219
        case Category = 460 // 500
        case TownArea = 442
        case Declaration = 128
        case MakeMeeting = 324
        case LocationChange = 216
    }
    
    var sheetType: BottomSheetSize!
    
    var grabberVisibility: Bool = false
    
    //MARK: - UI
    let titleLabel = UILabel().then{
        $0.font = UIFont.pretendard(size: 16, family: .Bold)
        $0.textColor = .black85
    }

    override func viewDidLoad() {
        
        super.viewDidLoad()

        modalPresentationStyle = .custom
        transitioningDelegate = self
        
        self.view.backgroundColor = .white
        self.navigationController?.isNavigationBarHidden = true
        
        self.view.addSubview(titleLabel)
        
        titleLabel.snp.makeConstraints{ make in
            make.top.equalToSuperview().offset(24)
            make.centerX.equalToSuperview()
        }
    }

    func presentationController(forPresented presented: UIViewController, presenting: UIViewController?, source: UIViewController) -> UIPresentationController? {
        
        let controller: UISheetPresentationController = .init(presentedViewController: presented, presenting: presenting)
        
        let detent: UISheetPresentationController.Detent = ._detent(withIdentifier: "Test1", constant: sheetType.rawValue * Const.deviceHeight / 810)
    
        controller.detents = [detent]
        controller.preferredCornerRadius = 28
        controller.prefersGrabberVisible = grabberVisibility
        
        return controller
    }

}
