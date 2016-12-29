//
//  Formatter.swift
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
