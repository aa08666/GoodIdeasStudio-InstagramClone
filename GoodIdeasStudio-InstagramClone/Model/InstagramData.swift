//
//  InstagramData.swift
//  GoodIdeasStudio-InstagramClone
//
//  Created by 柏呈 on 2019/6/23.
//  Copyright © 2019 Jerry. All rights reserved.
//

import Foundation

class IGItems {
    static let shared = IGItems()
    var name: String
    var content: String
    var likes: String
    var images: String
    
    init(name: String, content: String, likes: String, images: String) {
        self.name = name
        self.content = content
        self.likes = likes
        self.images = images
    }
    convenience init() {
        self.init(name: "", content: "", likes: "", images: "")
    }
}
