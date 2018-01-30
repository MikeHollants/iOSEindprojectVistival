//
//  LineUpViewController.swift
//  iOSEindprojectVistival
//
//  Created by Dajian on 29/01/18.
//  Copyright © 2018 ehb. All rights reserved.
//

import UIKit

class LineUpViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //Set a background image in place of the color
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background.png")!)
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
