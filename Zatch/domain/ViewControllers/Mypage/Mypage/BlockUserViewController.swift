//
//  BlockUserViewController.swift
//  Zatch
//
//  Created by 박지윤 on 2022/09/15.
//

import UIKit

class BlockUserViewController: BaseCenterTitleViewController {
    
    let mainView = BlockUserView()

    override func viewDidLoad() {
        
        super.viewDidLoad()

        self.navigationTitle.text = "차단된 사용자"
        
        mainView.tableView.dataSource = self
        mainView.tableView.delegate = self
        
        self.view.addSubview(mainView)
        
        mainView.snp.makeConstraints{
            $0.top.equalToSuperview().offset(108)
            $0.leading.trailing.equalToSuperview()
            $0.bottom.equalTo(self.view.safeAreaLayoutGuide)
        }
    }
    
    @objc func unblockBtnDidClicked(){
        let alert = CancelAlertViewController(message: "해당 사용자를 차단 해제하시겠습니까?", btnTitle: "해제")
        alert.modalPresentationStyle = .overFullScreen
        alert.alertHandler = { isUnblock in
            if(isUnblock){
                print("ok")
            }
        }
        self.present(alert, animated: false, completion: nil)
    }

}

extension BlockUserViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 5
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: BlockUserTableViewCell.cellIdentifier, for: indexPath) as? BlockUserTableViewCell else { fatalError() }
        
        cell.unblockBtn.addTarget(self, action: #selector(unblockBtnDidClicked), for: .touchUpInside)
        return cell
    }

}
