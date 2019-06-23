//
//  ViewController.swift
//  GoodIdeasStudio-InstagramClone
//
//  Created by 柏呈 on 2019/6/22.
//  Copyright © 2019 Jerry. All rights reserved.
//

import UIKit

class TimelineViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
        var items: [IGItems] = [IGItems(name: "test1", content: "Turpis egestas maecenas pharetra convallis posuere morbi leo urna molestie. Aliquet eget sit amet tellus cras adipiscing enim eu turpis. Nulla pharetra diam sit amet. Nisi quis eleifend quam adipiscing vitae proin sagittis nisl. Faucibus interdum posuere lorem ipsum dolor sit amet. Tempor orci dapibus ultrices in. Leo a diam sollicitudin tempor id. Maecenas accumsan lacus vel facilisis volutpat est velit.", likes: "3621", images: "image-test-1"), IGItems(name: "test2", content: "Gravida in fermentum et sollicitudin. Quisque sagittis purus sit amet volutpat. Aliquet nibh praesent tristique magna sit amet. Ultrices sagittis orci a scelerisque purus semper. ", likes: "1223", images: "image-test-2"), IGItems(name: "test3", content: "Semper feugiat nibh sed pulvinar proin gravida. Neque ornare aenean euismod elementum nisi quis. ", likes: "986", images: "image-test-3"), IGItems(name: "test4", content: "Vitae semper quis lectus nulla. Pretium fusce id velit ut tortor.", likes: "789", images: "image-test-4"), IGItems(name: "test5", content: "Neque viverra justo nec ultrices. ", likes: "876", images: "image-test-5"), IGItems(name: "test6", content: "Vulputate mi sit amet mauris commodo quis imperdiet massa tincidunt. Commodo nulla facilisi nullam vehicula ipsum a arcu.", likes: "482", images: "image-test-6"), IGItems(name: "test7", content: "Mollis aliquam ut porttitor leo. Quam viverra orci sagittis eu.", likes: "788", images: "image-test-7"), IGItems(name: "test8", content: "Cum sociis natoque penatibus et magnis dis parturient montes.", likes:"2873", images: "image-test-8"), IGItems(name: "test9", content: "Odio ut sem nulla pharetra diam sit amet. Id donec ultrices tincidunt arcu non sodales neque sodales. Fermentum et sollicitudin ac orci. Vitae congue mauris rhoncus aenean. Ac tincidunt vitae semper quis lectus nulla at volutpat.", likes: "6753", images: "image-test-9")]
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let timelineCellID = "timelineCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: timelineCellID, for: indexPath) as! TimelineTableViewCell
        cell.contentLabel.text = items[indexPath.row].content
        cell.likesLabel.text = items[indexPath.row].likes
        cell.contentImageView.image = UIImage(named: items[indexPath.row].images)
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let store = IGItems.shared
        
        
    }


    
}


