//
//  ViewController.swift
//  Out of Sight
//
//  Created by Sam Angeli on 11/02/2015.
//  Copyright (c) 2015 Sam Angeli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    

    @IBOutlet weak var LogoAnimation: UIImageView!
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        LogoAnimation.animationImages = [UIImage]()
        
        for var index = 0; index < 44; index++ {
            var frameName = String(format: "Comp 1_%05d", index)
            LogoAnimation.animationImages?.append(UIImage(named: frameName)!)
        }
        
        LogoAnimation.animationDuration = 2
        LogoAnimation.startAnimating()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func MissionsView(sender: AnyObject) {
        let MissionsView = self.storyboard?.instantiateViewControllerWithIdentifier("MissionsView") as
            MissionsViewController
        self.navigationController?.pushViewController(MissionsView, animated: true)
    }
    
    @IBAction func SettingsView(sender: AnyObject) {
        let SettingsView = self.storyboard?.instantiateViewControllerWithIdentifier("SettingsView") as
            SettingsViewController
        self.navigationController?.presentViewController(SettingsView, animated: true, completion: nil)
    }
    


}



