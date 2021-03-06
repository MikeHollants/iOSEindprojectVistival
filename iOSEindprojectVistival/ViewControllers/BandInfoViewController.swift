//
//  BandInfoViewController.swift
//  iOSEindprojectVistival
//
//  Created by Dajian on 29/01/18.
//  Copyright © 2018 ehb. All rights reserved.
//

import UIKit

class BandInfoViewController: UIViewController {

   
    @IBOutlet weak var ivLogo: UIImageView!
    @IBOutlet weak var lbBandName: UILabel!
    @IBOutlet weak var lbShowtime: UILabel!
    @IBOutlet weak var tvIntro: UITextView!
    
    var artist:Artist?
    var showtime = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //Set a background image in place of the color
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background.png")!)
        
        showtime = "\(artist!.location) \(artist!.showtime)"
        
        lbBandName.text = artist?.name
        ivLogo.image = artist?.logo
        lbShowtime.text = showtime
        tvIntro.text = artist?.intro
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func close() {
        dismiss(animated: true, completion: nil)
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
