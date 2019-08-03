//
//  DataModel.swift
//  GoodIdeasStudio-InstagramClone
//
//  Created by 林柏呈 on 2019/8/2.
//  Copyright © 2019 Jerry. All rights reserved.
//

import Foundation
class GetData {
    
    static func getStory() -> [Story] {
        
        var storyDatas : [Story] = []
        
        let story1 = Story(id: "Jerry", avatarName: "image-1")
        let story2 = Story(id: "Luke", avatarName: "image-2")
        let story3 = Story(id: "Tom", avatarName: "image-6")
        let story4 = Story(id: "Andy", avatarName: "image-3")
        let story5 = Story(id: "Cathy", avatarName: "image-4")
        let story6 = Story(id: "Mike", avatarName: "image-5")
        
        storyDatas.append(story1)
        storyDatas.append(story2)
        storyDatas.append(story3)
        storyDatas.append(story4)
        storyDatas.append(story5)
        storyDatas.append(story6)
        
        return storyDatas
    }
    
    
    static func getUserData() -> [User]{
        
        var users : [User] = []
        
        let userid = ["Jerry", "Luke", "Tom","Andy","Cathy","Mike"]
        
        let describe = ["吃飯、睡覺、打東東", "Have a nice day!","我好想睡覺喔","您老師奈得力","There are conflicting reports as to whether the victim was from El Salvador or Honduras. However police have insisted that officers were simply responding to the man firing a weapon concealed in his clothes."]
        
        let post = ["5 days in Kuala Lumpur, 3-day songwriting camp with writers from China, Taiwan, Singapore, Malaysia and Korea ✈️ 首次跨國合作，這幾天認識了很多新朋友！大家一起上課，寫歌，聚會，好開心啊～ Now back in Singapore, ready for more music-making 💪 ", "Donec hendrerit odio in eros cursus posuere. Lorem ipsum dolor sit amet, consectetur adipiscing elit.", "Donec ac finibus metus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur ac nisl et nunc pharetra faucibus eget non augue. Duis mollis malesuada mollis. ","The Casa Del Migrante Saltillo director Alberto Xicotencatl said that on Wednesday, the group had left to make their way to the U.S. About a mile away, they waited by the railway tracks to hop on a passing train when they were intercepted by police.He said that members of Mexico's National Institute of Migration and federal police arrived and began to persecute them. Then four of the migrants told him that police arrived and began firing."]
        
        for num in 1...15 {
            
            let randomID = Int.random(in: userid.indices)
            let randomPost = Int.random(in: post.indices)
            let randomDescribe = Int.random(in: describe.indices)
            let randonNumber = Int.random(in: 10...100)
            
            // fake timelines
            var timelines = [UserTimeline]()
            for num in 1...15 {
                let timeline = UserTimeline(id: userid[randomID], avatarName: "image-\(num)", post: post[randomPost], photoName: "image-\(num)")
                timelines.append(timeline)
            }
            
            let user = User(avatar: "image-\(num)", id: userid[randomID], post: "\(randonNumber)k", followers: "\(randonNumber)M", following: "\(randonNumber)", descirbe: describe[randomDescribe], timeLine: timelines)
            users.append(user)
        }
        return users
    }
    
    
    
    
}
