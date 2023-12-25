//
//  SingularPluralVC.swift
//  AlgoTasks
//
//  Created by Apple on 24/11/23.
//

import UIKit
import Foundation

class UniqueVC: UIViewController {

    //MARK: - IBOutlets
    @IBOutlet weak var txtLetters: UITextField!
    @IBOutlet weak var lblResults: UILabel!
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //MARK: - IBAction
    @IBAction func btnSubmitTapped(_ sender: Any) {
        if lettersAreUnique() {
            lblResults.text = "Yes! They are unique."
        } else {
            lblResults.text = "No! They are not unique."
        }
    }
}

//MARK: - Custom methods
extension UniqueVC {
    private func lettersAreUnique() -> Bool {
        let fulltext = txtLetters.text
        
        var characters = [Character]()
        for text in fulltext ?? "" {
            if !characters.contains(text) {
                characters.append(text)
            }
        }

        return characters.count == fulltext?.count ? true : false
    }
}
