//
//  LayoutPageViewController.swift
//  GoodIdeasStudio-InstagramClone
//
//  Created by 柏呈 on 2019/6/25.
//  Copyright © 2019 Jerry. All rights reserved.
//

import UIKit

class LayoutPageViewController: UIViewController {
    
    @IBOutlet weak var layoutCollectionView: UICollectionView!
    
    @IBOutlet weak var collectionLayout: UICollectionViewFlowLayout!
    
    enum LayoutStyle: String {
        case large = "LargePhotoCell"
        case small = "SmallPhotoCell"
    }
    var cellStyle = LayoutStyle.large
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 要加資料來源的 protocol 不然會報錯
        layoutCollectionView.delegate = self
        layoutCollectionView.dataSource = self
        let largeNib = UINib(nibName: "LayoutLargePhotoCollectionViewCell", bundle: nil)
        let smallNib = UINib(nibName: "LayoutSmallPhotoCollectionViewCell", bundle: nil)
       self.layoutCollectionView.register(largeNib, forCellWithReuseIdentifier: "LargePhotoCell")
        self.layoutCollectionView.register(smallNib, forCellWithReuseIdentifier: "SmallPhotoCell")
        collectionLayout.scrollDirection = .vertical
        
        
    }
    
    @IBAction func changeLayoutButton(_ sender: UIButton) {
        if sender.imageView == UIImage(named: "large") {
            cellStyle = .large
           sender.imageView?.image = UIImage(named: "small")
        } else {
            cellStyle = .small
            sender.imageView?.image = UIImage(named: "large")
        }
        layoutCollectionView.reloadData()
    }

}

extension LayoutPageViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return IGItems.items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // LayoutLargePhotoCollectionViewCell 裡面的 cell 設定錯誤
        let cellId = "Large"
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! LargeStyleCollectionViewCell
        cell.largeStyleImageView.image = UIImage(named: IGItems.items[indexPath.row].images)
        cell.contentLabel.text = IGItems.items[indexPath.row].content
        cell.likesLabel.text = IGItems.items[indexPath.row].likes
//        cell.largePhotoImageView.image = UIImage(named: IGItems.items[indexPath.row].images)
//        cell.largePhotoLikesLabel.text = IGItems.items[indexPath.row].likes
//        cell.largePhotoContentLabel.text = IGItems.items[indexPath.row].content
        return cell
        
//        guard let LayoutCellStyle = LayoutStyle(rawValue: cellStyle.rawValue) else {return UICollectionViewCell()}
//        switch LayoutCellStyle {
//        case .small:
//            guard let smallCell = cell as? LayoutSmallPhotoCollectionViewCell else {return UICollectionViewCell()}
//            return smallCell
//        default:
//            guard let largeCell = cell as? LayoutLargePhotoCollectionViewCell else {return UICollectionViewCell()}
//            return largeCell
//        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.bounds.width
        let height = width 
        return CGSize(width: width, height: height)
    }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
//        return 0
//    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    
}
