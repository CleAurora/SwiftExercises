//
//  AnimalDetailViewController.swift
//  Animals
//
//  Created by Cleís Aurora Pereira on 03/10/20.
//

import UIKit

class AnimalDetailViewController: UIViewController {

    var animal: Animal?

    @IBOutlet weak var nameLabel: UILabel!

    @IBAction func closeButton() {
        dismiss(animated: true, completion: nil)
    }



    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = animal?.name
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
