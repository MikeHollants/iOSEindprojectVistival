//
//  PostDetailsViewController.swift
//  iOSEindprojectVistival
//
//  Created by Dajian on 31/01/18.
//  Copyright © 2018 ehb. All rights reserved.
//

import UIKit

class PostDetailsViewController: UIViewController {

    
    @IBOutlet weak var lbTitlePost: UILabel!
    @IBOutlet weak var lbDatePost: UILabel!
    @IBOutlet weak var ivImagePost: UIImageView!
    @IBOutlet weak var tvContentPost: UITextView!
    @IBOutlet weak var lbAuthor: UILabel!
    
    var Post:Post!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Set a background image in place of the color
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background.png")!)
        
        let formater = DateFormatter()
        formater.dateStyle = .short
        formater.timeStyle = .short
        let date = Post.date
        
        ivImagePost.image = Post.image
        lbTitlePost.text = Post.title
        lbDatePost.text = formater.string(from: date)
        tvContentPost.text = Post.content
        lbAuthor.text = Post.author
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func btnClose() {
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
