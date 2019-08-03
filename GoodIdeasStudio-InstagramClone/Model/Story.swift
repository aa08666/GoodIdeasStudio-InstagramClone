//
//  Story.swift
//  GoodIdeasStudio-InstagramClone
//
//  Created by 林柏呈 on 2019/8/2.
//  Copyright © 2019 Jerry. All rights reserved.
//

import Foundation
import UIKit


class Story {
    
    var id: String
    var avatar: UIImage
    
    init(id: String, avatarName: String) {
        self.id = id
        if let avatar = UIImage(named: avatarName) {
            self.avatar = avatar
        } else {
            self.avatar = UIImage(named: "default")!
        }
    }
    
}
