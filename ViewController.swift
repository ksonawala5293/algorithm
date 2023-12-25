//
//  ViewController.swift
//  AlgoTasks
//
//  Created by Apple on 24/11/23.
//

import UIKit

struct challengeModel {
    var title : String?
    var subtitle : String?
}

class ViewController: UIViewController {

    //IBOutlets
    @IBOutlet weak var tblList: UITableView!
    
    //Constant
    let challanges = [challengeModel(title: "Challenge 1", subtitle: "Are the letters unique?"),
                    challengeModel(title: "Challenge 2", subtitle: "Is a string a palindrome?"),
                      challengeModel(title: "Challenge 3", subtitle: "Do two strings contain the same characters?"),
                      challengeModel(title: "Challenge 4", subtitle: "Tow sum problem")
                    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

//MARK: - UITableViewDelegate
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            navigateToVC(vc: UniqueVC.self)
        case 1:
            navigateToVC(vc: PalindromeVC.self)
        case 2:
            navigateToVC(vc: SameCharactersVC.self)
        default:
            break
        }
    }
}

//MARK: - UITableViewDataSource
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return challanges.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        }
        cell?.selectionStyle = .none
        cell?.accessoryType = .disclosureIndicator
        cell?.textLabel?.text = challanges[indexPath.row].title
        cell?.detailTextLabel?.text = challanges[indexPath.row].subtitle
        return cell ?? UITableViewCell()
    }
}

//MARK: - Navigations
extension ViewController {
    private func navigateToVC<T: UIViewController>(vc: T.Type) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: String(describing: T.self)) as? T else {return}
        navigationController?.pushViewController(vc, animated: true)
    }
}
