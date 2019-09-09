//
//  MenuPresentingViewcontroller.swift
//  SlideIn Drawer
//
//  Created by Greg Delgado on 9/9/19.
//  Copyright © 2019 Synchrony Telemed. All rights reserved.
//

import UIKit

class MenuPresentingViewController: UIViewController {
    
    let transition = SlideInTransition()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupMenuBarButton()
    }
    
    func setupMenuBarButton() {
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "ic_menu"), style: .plain, target: self, action: #selector(toggleMenu))
    }
    
    @objc func toggleMenu() {
        let menuViewController = MenuViewController()
        menuViewController.delegate = self
        menuViewController.modalPresentationStyle = .overCurrentContext
        menuViewController.transitioningDelegate = self
        present(menuViewController, animated: true)
    }
}

extension MenuPresentingViewController: UIViewControllerTransitioningDelegate {
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.isPresenting = true
        return transition
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.isPresenting = false
        return transition
    }
}

extension MenuPresentingViewController: MenuViewControllerDelegate {
    func handleMenuToggle(forMenuOption menuOption: MenuOption?) {
        dismiss(animated: true, completion: nil)
    }
}
