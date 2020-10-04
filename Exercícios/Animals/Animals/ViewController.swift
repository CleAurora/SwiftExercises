//
//  ViewController.swift
//  Animals
//
//  Created by Cleís Aurora Pereira on 01/10/20.
//

import UIKit

var animalArray = [Animal]()

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self

        animalArray.append(Animal(name: "Animal1", breed: "Raça1", weigth: "2 kg", specie: "Espécie1", image: "Animal1"))
        animalArray.append(Animal(name: "Animal2", breed: "Raça2", weigth: "2 kg", specie: "Espécie2", image: "Animal2"))
        animalArray.append(Animal(name: "Animal3", breed: "Raça3", weigth: "2 kg", specie: "Espécie3", image: "Animal3"))
        animalArray.append(Animal(name: "Animal4", breed: "Raça4", weigth: "2 kg", specie: "Espécie4", image: "Animal4"))
        animalArray.append(Animal(name: "Animal5", breed: "Raça5", weigth: "2 kg", specie: "Espécie5", image: "Animal5"))
        animalArray.append(Animal(name: "Animal6", breed: "Raça6", weigth: "2 kg", specie: "Espécie6", image: "Animal6"))
        animalArray.append(Animal(name: "Animal7", breed: "Raça7", weigth: "2 kg", specie: "Espécie7", image: "Animal7"))
        animalArray.append(Animal(name: "Animal8", breed: "Raça8", weigth: "2 kg", specie: "Espécie8", image: "Animal8"))
        animalArray.append(Animal(name: "Animal9", breed: "Raça9", weigth: "2 kg", specie: "Espécie9", image: "Animal9"))
        animalArray.append(Animal(name: "Animal10", breed: "Raça10", weigth: "2 kg", specie: "Espécie10", image: "Animal10"))
        animalArray.append(Animal(name: "Animal11", breed: "Raça11", weigth: "2 kg", specie: "Espécie11", image: "Animal11"))
        animalArray.append(Animal(name: "Animal12", breed: "Raça12", weigth: "2 kg", specie: "Espécie12", image: "Animal12"))
    }
}

extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let animalDetailViewController = UIStoryboard(name: "AnimalDetail", bundle: nil).instantiateInitialViewController() as! AnimalDetailViewController

        animalDetailViewController.animal = animalArray[indexPath.row]

        present(animalDetailViewController, animated: true, completion: nil)
    }
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        animalArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "animalCell", for: indexPath) as! AnimalCustomCell

        cell.setup(animal: animalArray[indexPath.row])
        return cell
    }


}
