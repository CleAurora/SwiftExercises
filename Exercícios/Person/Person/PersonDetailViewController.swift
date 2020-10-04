//
//  PersonDetailViewController.swift
//  Person
//
//  Created by Cleís Aurora Pereira on 03/10/20.
//

import UIKit

final class PersonDetailViewController: UIViewController {
    @IBOutlet private weak var nameLabel: UILabel!

    var person: Person?

    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = person?.name
    }
    @IBAction func closeButtonAction(){
        dismiss(animated: true, completion: nil)
    }

}
