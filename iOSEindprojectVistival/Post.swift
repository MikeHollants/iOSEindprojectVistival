//
//  Post.swift
//  iOSEindprojectVistival
//
//  Created by Dajian on 30/01/18.
//  Copyright © 2018 ehb. All rights reserved.
//

import Foundation
import UIKit

class Post {
    
    let title:String
    let author:String
    let content:String
    let date:Date
    let image:UIImage
    
    init(title:String , author:String , content:String , date:Date , image:UIImage){
        
        self.title = title
        self.author = author
        self.content = content
        self.date = date
        self.image = image
        
    }
    
}
