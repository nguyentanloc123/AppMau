//
//  ViewController.swift
//  ColorApp
//
//  Created by macbook on 3/23/20.
//  Copyright © 2020 macbook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        customButton()
        
    }
    @IBOutlet weak var btnLoginGoogle: UIButton!
    @IBOutlet weak var btnLoginFacebook: UIButton!
    @IBOutlet weak var btnReg: UIButton!
    @IBOutlet weak var btnLogin: UIButton!
    func customButton()
    {
        btnLoginGoogle.layer.cornerRadius = 4
               btnLoginGoogle.setTitleColor(.white, for: .normal)
        btnLogin.layer.cornerRadius = 4
        btnLogin.setTitleColor(.white, for: .normal)
        btnReg.layer.cornerRadius = 4
        btnReg.setTitleColor(.white, for: .normal)
        btnLoginFacebook.layer.cornerRadius = 4
        btnLoginFacebook.setTitleColor(.white, for: .normal)
//        btnLogin.setImage(UIImage(contentsOfFile: "iconfacebook"), for: .normal)
//        btnLogin.imageEdgeInsets = UIEdgeInsets(top: 10, left:10, bottom: 10, right: 10)

    }
}
extension UIButton {
    func moveImageLeftTextCenter(imagePadding: CGFloat = 30.0){
        guard let imageViewWidth = self.imageView?.frame.width else{return}
        guard let titleLabelWidth = self.titleLabel?.intrinsicContentSize.width else{return}
        self.contentHorizontalAlignment = .left
        imageEdgeInsets = UIEdgeInsets(top: 0.0, left: imagePadding - imageViewWidth / 2, bottom: 0.0, right: 0.0)
        titleEdgeInsets = UIEdgeInsets(top: 0.0, left: (bounds.width - titleLabelWidth) / 2 - imageViewWidth, bottom: 0.0, right: 0.0)
    }
}

