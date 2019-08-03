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
    @IBOutlet weak var seletCellCollection: UICollectionView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        let nib = UINib(nibName: "TimelineCollectionViewCell", bundle: nil)
        self.personalPageCollectionView.register(nib, forCellWithReuseIdentifier: "timelineCollectionCell")
        personalCollectionLayout.scrollDirection = .horizontal
    }
    
    enum CollectionCellStyle: String {
        
        case largeCollectionCellStyle = "LargePhotoCell"
        case smallCollectionoCellStyle = "SmallPhotoCell"
    }
    var cellStyle = CollectionCellStyle.largeCollectionCellStyle
    
    
}

extension PersonalPageTableViewController: UICollectionViewDataSource {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView {
        case personalPageCollectionView:
            return 10
        case seletCellCollection:
            return 10
        default:
            return .min
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        switch indexPath.section {
        case 0:
            
            let personalPageCellID = "timelineCollectionCell"
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: personalPageCellID, for: indexPath) as! TimelineCollectionViewCell
            cell.timelineCollectionImageView.image = UIImage(named: StoryItemsData.StoryPhotoArray[indexPath.row])
            return cell
            
        case 1:
            let smallcellID = "SmallPhotoCell"
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: smallcellID, for: indexPath) as! LayoutSmallPhotoCollectionViewCell
            cell.smallPhotoImageView.image = UIImage(named: IGItems.items[indexPath.row].images)
            return cell
            
        default:
            let largecellID = "LargePhotoCell"
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: largecellID, for: indexPath) as! LayoutLargePhotoCollectionViewCell
            cell.largePhotoImageView.image = UIImage(named: IGItems.items[indexPath.row].images)
            return cell
        }
        
    }
}
