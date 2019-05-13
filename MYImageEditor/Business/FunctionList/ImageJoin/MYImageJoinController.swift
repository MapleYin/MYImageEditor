//
//  MYImageJoinController.swift
//  MYImageEditor
//
//  Created by Maple Yin on 2019/5/12.
//  Copyright © 2019 Maple Yin. All rights reserved.
//

import UIKit

class MYImageJoinController: MYIEBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupNavigation()
        self.setupContentView()
        
    }
    
    func setupNavigation() {
        self.title = "Image Join"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(selectPhoto))
    }
    
    func setupContentView() {
        self.view.backgroundColor = UIColor.white
        
        if let data = UIImage(named: "test")?.cgImage?.dataProvider?.data {
            let dataArray: UnsafePointer<UInt8> = CFDataGetBytePtr(data)
            print("\(dataArray)")
        }
    }

}


// MARK: - Action
extension MYImageJoinController {
    @objc func selectPhoto() {
        let vc = UIImagePickerController()
        
        self.present(vc, animated: true, completion: nil)
    }
}
