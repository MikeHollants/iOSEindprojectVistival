//
//  NewsShareViewController.swift
//  iOSEindprojectVistival
//
//  Created by Dajian on 29/01/18.
//  Copyright © 2018 ehb. All rights reserved.
//

import UIKit

class NewsShareViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
    
    var postList:[Post] = [Post]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //Set a background image in place of the color
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background.png")!)
        
        var postTxt:String = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse scelerisque turpis luctus, blandit felis vitae, vulputate est. Nam sagittis, erat a interdum porttitor, sapien justo suscipit urna, sed semper lorem mi ut velit. Donec euismod massa interdum semper porttitor. Phasellus maximus auctor lorem quis porta. Morbi sit amet molestie purus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc efficitur dui id purus tristique, ac pharetra tortor vehicula. Sed id nunc ornare, ultricies nunc nec, scelerisque velit."
        
        var datePost1:Date = Date.init()
        var datePost2:Date = Date.init()
        var datePost3:Date = Date.init()
        
        var postPic1:UIImage = UIImage.init(named: "post1.jpg")!
        var postPic2:UIImage = UIImage.init(named: "post2.jpg")!
        var postPic3:UIImage = UIImage.init(named: "post3.jpg")!
        
        var post1:Post = Post.init(title: "Post Sample 1", author: "Dajian", content: postTxt, date: datePost1, image: postPic1)
        
        var post2:Post = Post.init(title: "Post Sample 2", author: "Dajian", content: postTxt, date: datePost2, image: postPic2)
        
        var post3:Post = Post.init(title: "Post Sample 3", author: "Dajian", content: postTxt, date: datePost3, image: postPic3)
        
        
        postList += [post1,post2,post3]
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return postList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            
            let cell:TopPostTableViewCell = tableView.dequeueReusableCell(withIdentifier: "TopPostCell", for: indexPath) as! TopPostTableViewCell
            
            let TopPost = postList[indexPath.row]
            
            let formater = DateFormatter()
            formater.dateStyle = .short
            formater.timeStyle = .short
            let date = TopPost.date
            
            cell.ivTopPost.image = TopPost.image
            cell.lbTitleTopPost.text = TopPost.title
            cell.lbDateTopPost.text = formater.string(from: date)
            
            
            return cell
            
        }else{
            
            let cell:PostTableViewCell = tableView.dequeueReusableCell(withIdentifier: "postCell", for: indexPath) as! PostTableViewCell
            
            let Post = postList[indexPath.row]
            
            let formater = DateFormatter()
            formater.dateStyle = .short
            formater.timeStyle = .short
            let date = Post.date
            
            cell.ivPost.image = Post.image
            cell.lbTitlePost.text = Post.title
            cell.lbDatePost.text = formater.string(from: date)
            
            return cell
            
        }
        
        
        
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
