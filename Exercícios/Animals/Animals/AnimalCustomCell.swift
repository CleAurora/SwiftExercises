//
//  AnimalCustomCell.swift
//  Animals
//
//  Created by Cleís Aurora Pereira on 01/10/20.
//

import UIKit

class AnimalCustomCell: UITableViewCell {


    @IBOutlet weak var speciesLabel: UILabel!
    @IBOutlet weak var weight: UILabel!
    @IBOutlet weak var breedLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageAnimal: UIImageView!

    func setup(animal: Animal){
        speciesLabel.text = animal.specie
        weight.text = animal.weigth
        breedLabel.text = animal.breed
        nameLabel.text = animal.name
        imageAnimal.image = UIImage(named: animal.image)
    }


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
