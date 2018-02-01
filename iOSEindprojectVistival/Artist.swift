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
    let showtime:String
        
    init(name:String , intro:String , logo:UIImage , website:String , musicPreview:String , showtime:String){
        
        self.name = name
        self.intro = intro
        self.logo = logo
        self.website = website
        self.musicPreview = musicPreview
        self.showtime = showtime
        self.location = location
    }
    
}
