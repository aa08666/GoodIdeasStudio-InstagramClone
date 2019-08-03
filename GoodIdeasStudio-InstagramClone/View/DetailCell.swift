//
//  DetailCell.swift
//  GoodIdeasStudio-InstagramClone
//
//  Created by 林柏呈 on 2019/8/2.
//  Copyright © 2019 Jerry. All rights reserved.
//

import UIKit

class DetailCell: UICollectionViewCell {

    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var photo: UIImageView!
    @IBOutlet weak var account: UILabel!
    @IBOutlet weak var postLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func updateCell(_ user: UserTimeline) {
        avatar.image = user.avatar
        idLabel.text = user.id
        account.text = user.id
        photo.image = user.photo
        postLabel.text = user.post
    }

}
