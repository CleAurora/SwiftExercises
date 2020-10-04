//
//  CarDetailViewController.swift
//  CarCollectionView
//
//  Created by Cleís Aurora Pereira on 30/09/20.
//

import UIKit

class CarDetailViewController: UIViewController {

    @IBOutlet weak var imageDetailCar: UIImageView!
    var car: Car?

    override func viewDidLoad() {
        super.viewDidLoad()

        if let car = car{
            title = car.name
            imageDetailCar.image = UIImage(named: car.image)
        }


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
