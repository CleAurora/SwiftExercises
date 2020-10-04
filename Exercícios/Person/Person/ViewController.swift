//
//  ViewController.swift
//  Person
//
//  Created by Cleís Aurora Pereira on 01/10/20.
//

import UIKit

class ViewController: UIViewController {

    var personArray = [Person]()

    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self

        personArray.append(Person(name: "Cleís Aurora", office: "Dev Swift", email: "cleis@email.com", image: "pessoaM5"))
        personArray.append(Person(name: "Pessoa1", office: "emprego1", email: "pessoa1@email.com", image: "pessoa1"))
        personArray.append(Person(name: "Pessoa2", office: "emprego2", email: "pessoa2@email.com", image: "pessoa2"))
        personArray.append(Person(name: "Pessoa3", office: "emprego3", email: "pessoa3@email.com", image: "pessoa3"))
        personArray.append(Person(name: "Pessoa4", office: "emprego4", email: "pessoa4@email.com", image: "pessoa4"))
        personArray.append(Person(name: "Pessoa6", office: "emprego6", email: "pessoa6@email.com", image: "pessoaM6"))
        personArray.append(Person(name: "Cleís Aurora", office: "Dev Swift", email: "cleis@email.com", image: "pessoaM5"))
        personArray.append(Person(name: "Pessoa1", office: "emprego1", email: "pessoa1@email.com", image: "pessoa1"))
        personArray.append(Person(name: "Pessoa2", office: "emprego2", email: "pessoa2@email.com", image: "pessoa2"))
        personArray.append(Person(name: "Pessoa3", office: "emprego3", email: "pessoa3@email.com", image: "pessoa3"))
        personArray.append(Person(name: "Pessoa4", office: "emprego4", email: "pessoa4@email.com", image: "pessoa4"))
        personArray.append(Person(name: "Pessoa6", office: "emprego6", email: "pessoa6@email.com", image: "pessoaM6"))
        personArray.append(Person(name: "Cleís Aurora", office: "Dev Swift", email: "cleis@email.com", image: "pessoaM5"))
        personArray.append(Person(name: "Pessoa1", office: "emprego1", email: "pessoa1@email.com", image: "pessoa1"))
        personArray.append(Person(name: "Pessoa2", office: "emprego2", email: "pessoa2@email.com", image: "pessoa2"))
        personArray.append(Person(name: "Pessoa3", office: "emprego3", email: "pessoa3@email.com", image: "pessoa3"))
        personArray.append(Person(name: "Pessoa4", office: "emprego4", email: "pessoa4@email.com", image: "pessoa4"))
        personArray.append(Person(name: "Pessoa6", office: "emprego6", email: "pessoa6@email.com", image: "pessoaM6"))

        
    }
}

extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let personDetailViewController = UIStoryboard(name: "PersonDetail", bundle: nil).instantiateInitialViewController() as! PersonDetailViewController
        personDetailViewController.person = personArray[indexPath.row]

        present(personDetailViewController, animated: true, completion: nil)
    }
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyCustomCellTableViewCell

        cell.setup(person: personArray[indexPath.row])
        return cell
    }




}
