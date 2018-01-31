//
//  NewsShareViewController.swift
//  iOSEindprojectVistival
//
//  Created by Dajian on 29/01/18.
//  Copyright © 2018 ehb. All rights reserved.
//

import UIKit

class NewsShareViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {

    
    @IBOutlet weak var tableView: UITableView!
    
    var facebookList:[Post] = [Post]()
    var instagramList:[Post] = [Post]()
    var tweeterList:[Post] = [Post]()
    var fullList:[Post] = [Post]()
    var currentList:[Post] = [Post]()
    var channel:Int = 3
    @IBOutlet weak var lbChannelName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //Set a background image in place of the color
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background.png")!)
        
        let postTxt:String = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse scelerisque turpis luctus, blandit felis vitae, vulputate est. Nam sagittis, erat a interdum porttitor, sapien justo suscipit urna, sed semper lorem mi ut velit. Donec euismod massa interdum semper porttitor. Phasellus maximus auctor lorem quis porta. Morbi sit amet molestie purus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc efficitur dui id purus tristique, ac pharetra tortor vehicula. Sed id nunc ornare, ultricies nunc nec, scelerisque velit."
        
        let datePost:Date = Date.init()
        
        let postPic1:UIImage = UIImage.init(named: "post2.jpg")!
        let postPic2:UIImage = UIImage.init(named: "post1.jpg")!
        let postPic3:UIImage = UIImage.init(named: "post3.jpg")!
        
        let post1:Post = Post.init(title: "Facebook 1", author: "Dajian", content: postTxt, date: datePost, image: postPic1)
        let post2:Post = Post.init(title: "Facebook 2", author: "Dajian", content: postTxt, date: datePost, image: postPic2)
        let post3:Post = Post.init(title: "Facebook 3", author: "Dajian", content: postTxt, date: datePost, image: postPic3)
        let post4:Post = Post.init(title: "Facebook 4", author: "Dajian", content: postTxt, date: datePost, image: postPic1)
        let post5:Post = Post.init(title: "Facebook 5", author: "Dajian", content: postTxt, date: datePost, image: postPic2)
        let post6:Post = Post.init(title: "Facebook 6", author: "Dajian", content: postTxt, date: datePost, image: postPic3)
        let post7:Post = Post.init(title: "Facebook 7!", author: "Dajian", content: postTxt, date: datePost, image: postPic1)
        let post8:Post = Post.init(title: "Tweeter 1", author: "Dajian", content: postTxt, date: datePost, image: postPic2)
        let post9:Post = Post.init(title: "Tweeter 2", author: "Dajian", content: postTxt, date: datePost, image: postPic3)
        let post10:Post = Post.init(title: "Tweeter 3", author: "Dajian", content: postTxt, date: datePost, image: postPic1)
        let post11:Post = Post.init(title: "Tweeter 4", author: "Dajian", content: postTxt, date: datePost, image: postPic2)
        let post12:Post = Post.init(title: "Tweeter 5", author: "Dajian", content: postTxt, date: datePost, image: postPic3)
        let post13:Post = Post.init(title: "Tweeter 6", author: "Dajian", content: postTxt, date: datePost, image: postPic2)
        let post14:Post = Post.init(title: "Tweeter 7", author: "Dajian", content: postTxt, date: datePost, image: postPic3)
        let post15:Post = Post.init(title: "Instagram 1", author: "Dajian", content: postTxt, date: datePost, image: postPic2)
        let post16:Post = Post.init(title: "Instagram 2", author: "Dajian", content: postTxt, date: datePost, image: postPic3)
        let post17:Post = Post.init(title: "Instagram 3", author: "Dajian", content: postTxt, date: datePost, image: postPic1)
        let post18:Post = Post.init(title: "Instagram 4", author: "Dajian", content: postTxt, date: datePost, image: postPic2)
        let post19:Post = Post.init(title: "Instagram 5", author: "Dajian", content: postTxt, date: datePost, image: postPic3)
        let post20:Post = Post.init(title: "Instagram 6", author: "Dajian", content: postTxt, date: datePost, image: postPic2)
        let post21:Post = Post.init(title: "Instagram 7", author: "Dajian", content: postTxt, date: datePost, image: postPic3)
        
        facebookList += [post1,post2,post3,post4,post5,post6,post7]
        tweeterList += [post8,post9,post10,post11,post12,post13,post14]
        instagramList += [post15,post16,post17,post18,post19,post20,post21]
        
        fullList += [post1,post2,post3,post4,post5,post6,post7,post8,post9,post10,post11,post12,post13,post14,post15,post16,post17,post18,post19,post20,post21]
        currentList = fullList
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    @IBAction func selChannel(_ sender: UIButton) {
        
        channel = sender.tag
        
        switch channel {
            
        case 0:
            lbChannelName.text = "Tweeter Channel"
            currentList = tweeterList
            tableView.reloadData()
        case 1:
            lbChannelName.text = "Instagram Channel"
            currentList = instagramList
            tableView.reloadData()
        case 2:
            lbChannelName.text = "Facebook Channel"
            currentList = facebookList
            tableView.reloadData()
        default:
            lbChannelName.text = "Vistival Channel"
            currentList = fullList
    }
    
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currentList.count
    }
    
func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            if indexPath.row == 0 {
                
                let cell:TopPostTableViewCell = tableView.dequeueReusableCell(withIdentifier: "TopPostCell", for: indexPath) as! TopPostTableViewCell
                
                let TopPost = currentList[indexPath.row]
                let formater = DateFormatter()
                formater.dateStyle = .short
                formater.timeStyle = .short
                let date = TopPost.date
                
                cell.ivTopPost.image = TopPost.image
                cell.lbTitleTopPost.text = TopPost.title
                cell.lbDateTopPost.text = formater.string(from: date)
                cell.lbAuthor.text = TopPost.author
                
                return cell as UITableViewCell
                
            }else{
                
                let cell:PostTableViewCell = tableView.dequeueReusableCell(withIdentifier: "postCell", for: indexPath) as! PostTableViewCell
                
                let Post = currentList[indexPath.row]
                let formater = DateFormatter()
                formater.dateStyle = .short
                formater.timeStyle = .short
                let date = Post.date
                
                cell.ivPost.image = Post.image
                cell.lbTitlePost.text = Post.title
                cell.lbDatePost.text = formater.string(from: date)
                
                return cell as UITableViewCell
                
            }
    }
    
    
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        let destination:PostDetailsViewController = segue.destination as! PostDetailsViewController
        
        if let cell:TopPostTableViewCell = sender as? TopPostTableViewCell {
            
            var index = self.tableView.indexPath(for: cell)
            destination.Post = currentList[(index?.row)!]
            
        }else if let cell:PostTableViewCell = sender as? PostTableViewCell {
            
            var index = self.tableView.indexPath(for: cell)
            destination.Post = currentList[(index?.row)!]
        }
        
    }


}
