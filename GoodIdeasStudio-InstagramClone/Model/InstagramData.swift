//
//  InstagramData.swift
//  GoodIdeasStudio-InstagramClone
//
//  Created by 柏呈 on 2019/6/23.
//  Copyright © 2019 Jerry. All rights reserved.
//

import Foundation

class IGItems {
    
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
    
//    func creatModel() {
//        for i in IGItems.items {
//            "image\()"
//        }
//    }
    
    static let items: [IGItems] = [IGItems(name: "test1", content: "Turpis egestas maecenas pharetra convallis posuere morbi leo urna molestie. Aliquet eget sit amet tellus cras adipiscing enim eu turpis. Nulla pharetra diam sit amet. Nisi quis eleifend quam adipiscing vitae proin sagittis nisl. Faucibus interdum posuere lorem ipsum dolor sit amet. Tempor orci dapibus ultrices in. Leo a diam sollicitudin tempor id. Maecenas accumsan lacus vel facilisis volutpat est velit.", likes: "3621", images: "image-test-1"), IGItems(name: "test2", content: "Gravida in fermentum et sollicitudin. Quisque sagittis purus sit amet volutpat. Aliquet nibh praesent tristique magna sit amet. Ultrices sagittis orci a scelerisque purus semper. ", likes: "1223", images: "image-test-2"), IGItems(name: "test3", content: "Semper feugiat nibh sed pulvinar proin gravida. Neque ornare aenean euismod elementum nisi quis. ", likes: "986", images: "image-test-3"), IGItems(name: "test4", content: "Vitae semper quis lectus nulla. Pretium fusce id velit ut tortor.", likes: "789", images: "image-test-4"), IGItems(name: "test5", content: "Neque viverra justo nec ultrices. ", likes: "876", images: "image-test-5"), IGItems(name: "test6", content: "Vulputate mi sit amet mauris commodo quis imperdiet massa tincidunt. Commodo nulla facilisi nullam vehicula ipsum a arcu.", likes: "482", images: "image-test-6"), IGItems(name: "test7", content: "Mollis aliquam ut porttitor leo. Quam viverra orci sagittis eu.", likes: "788", images: "image-test-7"), IGItems(name: "test8", content: "Cum sociis natoque penatibus et magnis dis parturient montes.", likes:"2873", images: "image-test-8"), IGItems(name: "test9", content: "Odio ut sem nulla pharetra diam sit amet. Id donec ultrices tincidunt arcu non sodales neque sodales. Fermentum et sollicitudin ac orci. Vitae congue mauris rhoncus aenean. Ac tincidunt vitae semper quis lectus nulla at volutpat.", likes: "6753", images: "image-test-9")]
    
}


struct StoryItemsData {
    static let StoryPhotoArray:[String] = ["c1","c2","c3","c4","c5","c6","c7","c8","c9","c10"]
}


