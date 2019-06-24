//
//  ViewController.swift
//  GoodIdeasStudio-InstagramClone
//
//  Created by 柏呈 on 2019/6/22.
//  Copyright © 2019 Jerry. All rights reserved.
//

import UIKit

class TimelineViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
 
    @IBOutlet weak var collectionLayout: UICollectionViewFlowLayout!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var tableView: UITableView!


    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return IGItems.items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
            let timelineCellID = "timelineCell"
            let cell = tableView.dequeueReusableCell(withIdentifier: timelineCellID, for: indexPath) as! TimelineTableViewCell
            cell.contentLabel.text = IGItems.items[indexPath.row].content
            cell.likesLabel.text = IGItems.items[indexPath.row].likes
            cell.contentImageView.image = UIImage(named: IGItems.items[indexPath.row].images)
            cell.selectionStyle = .none
            
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "TimelineCollectionViewCell", bundle: nil)
        self.collectionView.register(nib, forCellWithReuseIdentifier: "timelineCollectionCell")
        collectionLayout.scrollDirection = .horizontal
    }
    
}

extension TimelineViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let identifier = "timelineCollectionCell"
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as! TimelineCollectionViewCell
        cell.timelineCollectionImageView.image = UIImage(named: StoryItemsData.StoryPhotoArray[indexPath.row])
    
        return cell
        
    }
    
    
    
}
