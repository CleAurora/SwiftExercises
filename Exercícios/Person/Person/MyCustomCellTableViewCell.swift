//
//  MyCustomCellTableViewCell.swift
//  Person
//
//  Created by Cleís Aurora Pereira on 01/10/20.
//

import UIKit

class MyCustomCellTableViewCell: UITableViewCell {


    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var officeLabel: UILabel!
    @IBOutlet weak var email: UILabel!
    @IBOutlet weak var imagePerson: UIImageView!

    func setup(person: Person){
        nameLabel.text = person.name
        officeLabel.text = person.office
        email.text = person.email
        imagePerson.image = UIImage(named: person.image)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
