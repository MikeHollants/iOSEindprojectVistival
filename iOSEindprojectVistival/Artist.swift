//
//  Artist.swift
//  iOSEindprojectVistival
//
//  Created by Michael Hollants on 29/01/2018.
//  Copyright © 2018 ehb. All rights reserved.
//

import Foundation
import UIKit

class Artist {
    
    let name:String
    let intro:String
    let website:String
    let musicPreview:String
    let logo:UIImage
    let showtime:Date
        
    init(name:String , intro:String , logo:String , website:String , musicPreview:String , showtime:Date){
        
        self.name = name
        self.intro = intro
        self.logo = UIImage.init(named: logo)!
        self.website = website
        self.musicPreview = musicPreview
        self.showtime = showtime
    }
    
}
