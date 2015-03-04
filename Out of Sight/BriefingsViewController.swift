//
//  BriefingsViewController.swift
//  Out of Sight
//
//  Created by Sam Angeli on 11/02/2015.
//  Copyright (c) 2015 Sam Angeli. All rights reserved.
//

import UIKit

class BriefingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
         

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func PlaylistView(sender: AnyObject) {
        let PlaylistView = self.storyboard?.instantiateViewControllerWithIdentifier("PlaylistView") as
            PlaylistViewController
        self.navigationController?.pushViewController(PlaylistView, animated: true)
        
    }
    


    @IBAction func Back(sender: AnyObject) {
         self.navigationController?.popViewControllerAnimated(true)
    }

}
