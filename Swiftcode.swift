//
//  Swiftcode.swift
//  Swiftcode
//
//  Created by Deepak Carpenter on 2016/12/29.
//  Copyright (c) 2016 Deepak Carpenter. All rights reserved.

//  Useful Swift3 Code 

//MARK: - Make Navbar Transperent
self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
self.navigationController?.navigationBar.shadowImage = UIImage()
self.navigationController?.navigationBar.isTranslucent = true
self.navigationController?.view.backgroundColor = UIColor.clear
self.navigationController?.navigationBar.backgroundColor = UIColor.clear

//MARK:- Create Checkbox UIButton
/*Assign Checkbox class as your UIButton Class and use isChecked wherever you want to check the Checkbox state*/
class Checkbox: UIButton {
    // Images
    var checkedImage = UIImage()
    var unCheckedImage = UIImage()
    
    @IBInspectable
    var activeImage: UIImage = UIImage() {
        didSet {
            checkedImage = activeImage
        }
    }
    
    @IBInspectable
    var inActiveImage: UIImage = UIImage() {
        didSet {
            unCheckedImage = inActiveImage
        }
    }
    
    
    // Bool property
    var isChecked: Bool = false {
        didSet{
            if isChecked == true {
                self.setImage(checkedImage, for: .normal)
            } else {
                self.setImage(unCheckedImage, for: .normal)
            }
        }
    }
    
    override func awakeFromNib() {
        self.addTarget(self, action: #selector(buttonClicked(sender:)), for: UIControlEvents.touchUpInside)
        self.isChecked = false
    }
    
    func buttonClicked(sender: UIButton) {
        if sender == self {
            isChecked = !isChecked
        }
    }
}
