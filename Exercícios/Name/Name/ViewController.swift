//
//  ViewController.swift
//  Name
//
//  Created by Cleís Aurora Pereira on 01/10/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!

    var nameArray = [Name]()

    override func viewDidLoad() {
        super.viewDidLoad()

        for i in 1...20 {
            nameArray.append(Name(name: "Nome \(i)" ))
        }

        collectionView.delegate = self
        collectionView.dataSource = self
    }
}

extension ViewController: UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        nameArray.remove(at: indexPath.row)
        collectionView.reloadData()
    }
}

extension ViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        nameArray.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! NameCollectionViewCell

        cell.setup(name: nameArray[indexPath.row])

        return cell;
    }
}
