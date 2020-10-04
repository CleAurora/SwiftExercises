//
//  NameCollectionViewCell.swift
//  Name
//
//  Created by Cleís Aurora Pereira on 03/10/20.
//

import UIKit

class NameCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!

    func setup (name: Name){
        nameLabel.text = name.name
    }
}
