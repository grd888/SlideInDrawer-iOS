//
//  HomeViewController.swift
//  SlideIn Drawer
//
//  Created by Greg Delgado on 9/9/19.
//  Copyright © 2019 Synchrony Telemed. All rights reserved.
//

import UIKit

class HomeViewController: MenuPresentingViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        navigationItem.title = "Home"
    }
}
