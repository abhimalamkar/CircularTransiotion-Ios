//
//  SecondViewController.swift
//  MyApp
//
//  Created by Abhijeet Malamkar on 2/9/17.
//  Copyright © 2017 abhijeetmalamkar. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var dissmissButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        dissmissButton.layer.cornerRadius = dissmissButton.layer.frame.width / 2
        
    }

    @IBAction func dissmissSecondVC(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
