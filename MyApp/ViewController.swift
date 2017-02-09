//
//  ViewController.swift
//  MyApp
//
//  Created by Abhijeet Malamkar on 2/9/17.
//  Copyright © 2017 abhijeetmalamkar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIViewControllerTransitioningDelegate {
    @IBOutlet weak var menuButton: UIButton!
    
    let transition = CircularTransition()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        menuButton.layer.cornerRadius = menuButton.layer.frame.width / 2
        
        var random:Int!
    }
    //prepare function
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondVC = segue.destination as! SecondViewController
        secondVC.transitioningDelegate = self
        secondVC.modalPresentationStyle = .custom
    }
    
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.transitionMode = .present
        transition.startingpoint = menuButton.center
        transition.circleColor = menuButton.backgroundColor!
        
        return transition
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.transitionMode = .dissmiss
        transition.startingpoint = menuButton.center
        transition.circleColor = menuButton.backgroundColor!
        
        return transition
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

