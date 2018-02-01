//
//  LineUpViewController.swift
//  iOSEindprojectVistival
//
//  Created by Dajian on 29/01/18.
//  Copyright © 2018 ehb. All rights reserved.
//

import UIKit

class LineUpViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var tableView: UITableView!
    
    var day1Stage1:[Artist] = [Artist]()
    var day1Stage2:[Artist] = [Artist]()
    var day2Stage1:[Artist] = [Artist]()
    var day2Stage2:[Artist] = [Artist]()
    var currentStage1:[Artist] = [Artist]()
    var currentStage2:[Artist] = [Artist]()
    
    var day:Int = 3
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Set a background image in place of the color
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background.png")!)
        
        let introTxt:String = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse scelerisque turpis luctus, blandit felis vitae, vulputate est. Nam sagittis, erat a interdum porttitor, sapien justo suscipit urna, sed semper lorem mi ut velit. Donec euismod massa interdum semper porttitor. Phasellus maximus auctor lorem quis porta. Morbi sit amet molestie purus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc efficitur dui id purus tristique, ac pharetra tortor vehicula. Sed id nunc ornare, ultricies nunc nec, scelerisque velit."
        let artistPic1:UIImage = UIImage.init(named:"logo-admiral-freebee.jpg")!
        let artistPic2:UIImage = UIImage.init(named:"reel-big-fish-name.png")!
        let artistPic3:UIImage = UIImage.init(named:"my-band.jpg")!
        
        let artist1 : Artist = Artist.init(name: "Admiral Freebie", intro: introTxt, logo: artistPic1, website: "www.admiralfreebie.be", musicPreview: "www.apple.com/iTunes.store/admiralfreebie", showtime: "18u", location: "Stage 1")
        let artist2 : Artist = Artist.init(name: "Reel Big Fish", intro: introTxt, logo: artistPic2, website: "www.reelbigfish.com", musicPreview: "www.apple.com/iTunes.store/reelbigfish", showtime: "21u", location: "Stage 1")
        let artist3 : Artist = Artist.init(name: "artist 3", intro: introTxt, logo: artistPic3, website: "www.artist3.com", musicPreview: "www.apple.com/iTunes.store/artist3", showtime: "18u", location: "Stage 2")
        let artist4 : Artist = Artist.init(name: "artist 4", intro: introTxt, logo: artistPic3, website: "www.artist4.com", musicPreview: "www.apple.com/iTunes.store/artist4", showtime: "21u", location: "Stage 2")
        let artist5 : Artist = Artist.init(name: "artist 5", intro: introTxt, logo: artistPic3, website: "www.artist5.com", musicPreview: "www.apple.com/iTunes.store/artist5", showtime: "18u", location: "Stage 1")
        let artist6 : Artist = Artist.init(name: "artist 6", intro: introTxt, logo: artistPic3, website: "www.artist6.com", musicPreview: "www.apple.com/iTunes.store/artist6", showtime: "21u", location: "Stage 1")
        let artist7 : Artist = Artist.init(name: "artist 7", intro: introTxt, logo: artistPic3, website: "www.artist7.com", musicPreview: "www.apple.com/iTunes.store/artist7", showtime: "18u", location: "Stage 2")
        let artist8 : Artist = Artist.init(name: "artist 8", intro: introTxt, logo: artistPic3, website: "www.artist8.com", musicPreview: "www.apple.com/iTunes.store/artist8", showtime: "21u", location: "Stage 2")
        
        day1Stage1 += [artist1, artist2]
        day1Stage2 += [artist3, artist4]
        day2Stage1 += [artist5, artist6]
        day2Stage2 += [artist7, artist8]
        currentStage1 += day1Stage1
        currentStage2 += day1Stage2
    }

    
    override func viewDidAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    
    @IBAction func selDay(_ sender: UIButton){
        
        day = sender.tag
        switch day{
        case 0:
            currentStage1 = day1Stage1
            currentStage2 = day1Stage2
            tableView.reloadData()
        case 1:
            currentStage1 = day2Stage1
            currentStage2 = day2Stage2
            tableView.reloadData()
        default:
            currentStage1 = day1Stage1
            currentStage2 = day1Stage2
        }
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int{
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section  {
        case 0:
            return currentStage1.count
        case 1:
            return currentStage2.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:LineUpTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! LineUpTableViewCell
        
        
        switch indexPath.section {
        
        case 0:
            
            let artist = currentStage1[indexPath.row]
            cell.lbShowTime.text = artist.showtime
            cell.lbBandName.text = artist.name
            cell.ivLogo.image = artist.logo
            
        case 1:
            
            let artist = currentStage2[indexPath.row]
            cell.lbShowTime.text = artist.showtime
            cell.lbBandName.text = artist.name
            cell.ivLogo.image = artist.logo
            
        default:
            
            let artist = currentStage1[indexPath.row]
            cell.lbShowTime.text = artist.showtime
            cell.lbBandName.text = artist.name
            cell.ivLogo.image = artist.logo
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "stage 1"
        case 1:
            return "stage 2"
        default:
            return "stage 1"
        }
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
