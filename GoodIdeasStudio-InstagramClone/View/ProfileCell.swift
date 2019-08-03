//
//  ProfileCell.swift
//  GoodIdeasStudio-InstagramClone
//
//  Created by 林柏呈 on 2019/8/2.
//  Copyright © 2019 Jerry. All rights reserved.
//

import UIKit

class ProfileCell: UICollectionViewCell {

    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var postLabel: UILabel!
    @IBOutlet weak var followersLabel: UILabel!
    @IBOutlet weak var followingLabel: UILabel!
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var describeLabel: UILabel!
    @IBOutlet weak var avatarButton: UIButton!
    
    
    func updateCell(_ user: User) {
        
        avatar.image = UIImage(named: user.avatar)
        postLabel.text = user.post
        followersLabel.text = user.followers
        followingLabel.text = user.following
        idLabel.text = user.id
        describeLabel.text = user.descirbe
    }
}
