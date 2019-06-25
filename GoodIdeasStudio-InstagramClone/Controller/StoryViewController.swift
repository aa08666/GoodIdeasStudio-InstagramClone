//
//  StoryViewController.swift
//  GoodIdeasStudio-InstagramClone
//
//  Created by 柏呈 on 2019/6/25.
//  Copyright © 2019 Jerry. All rights reserved.
//

import UIKit

class StoryViewController: UIViewController, UICollectionViewDataSource {

    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var collectionViewLayout: UICollectionViewFlowLayout!
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10 
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cellID = "timelineCollectionCell"
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath) as! TimelineCollectionViewCell
        cell.timelineCollectionImageView.image = UIImage(named: StoryItemsData.StoryPhotoArray[indexPath.row])
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "TimelineCollectionViewCell", bundle: nil)
        self.collectionView.register(nib, forCellWithReuseIdentifier: "timelineCollectionCell")
        collectionViewLayout.scrollDirection = .horizontal
 
    }
    

    

}
