//
//  PersonalPageTableViewController.swift
//  GoodIdeasStudio-InstagramClone
//
//  Created by 柏呈 on 2019/6/24.
//  Copyright © 2019 Jerry. All rights reserved.
//

import UIKit

class PersonalPageTableViewController: UITableViewController {
    
    @IBOutlet weak var personalCollectionLayout: UICollectionViewFlowLayout!
    @IBOutlet weak var personalPageCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "TimelineCollectionViewCell", bundle: nil)
        self.personalPageCollectionView.register(nib, forCellWithReuseIdentifier: "timelineCollectionCell")
        personalCollectionLayout.scrollDirection = .horizontal
        

    }

    

//    override func numberOfSections(in tableView: UITableView) -> Int {
//
//        return 0
//    }
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//
//        return 0
//    }

}

extension PersonalPageTableViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let identifier = "timelineCollectionCell"
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as! TimelineCollectionViewCell
        cell.timelineCollectionImageView.image = UIImage(named:StoryItemsData.StoryPhotoArray[indexPath.row])
        return cell
    }
    
    
}
