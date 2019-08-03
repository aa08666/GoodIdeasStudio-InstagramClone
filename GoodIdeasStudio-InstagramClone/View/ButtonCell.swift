//
//  ButtonCollectionViewCell.swift
//  GoodIdeasStudio-InstagramClone
//
//  Created by 林柏呈 on 2019/8/2.
//  Copyright © 2019 Jerry. All rights reserved.
//

import UIKit

protocol ButtonCellDelegate {
    func toSimple()
    func toDetail()
}

class ButtonCell: UICollectionViewCell {
    
    var delegate: ButtonCellDelegate?
    
    
    @IBAction func simpleButton(_ sender: Any) {
        
        delegate?.toSimple()
    }
    
    @IBAction func detailButton(_ sender: Any) {
        delegate?.toDetail()
        
    }
}
