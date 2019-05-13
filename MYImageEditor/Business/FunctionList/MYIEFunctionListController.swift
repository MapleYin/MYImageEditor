//
//  MYIEFunctionListController.swift
//  MYImageEditor
//
//  Created by Maple Yin on 2019/5/12.
//  Copyright © 2019 Maple Yin. All rights reserved.
//

import UIKit

class MYIEFunctionListController: MYIEBaseViewController {

    var collectionView: UICollectionView {
        let layout = UICollectionViewLayout()
        let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        return collectionView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Image Editor"
        
        self.view.backgroundColor = UIColor.white
        

    }
    
    func setupView() {
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        self.view.addSubview(self.collectionView)
        
        self.collectionView.snp.makeConstraints { (make) in
            make.edges.equalTo(self.view)
        }
    }
}


extension MYIEFunctionListController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 0;
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return UICollectionViewCell()
    }
    
    
}
