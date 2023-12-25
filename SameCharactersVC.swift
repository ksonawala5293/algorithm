//
//  SameCharactersVC.swift
//  AlgoTasks
//
//  Created by Apple on 28/11/23.
//

import UIKit

class SameCharactersVC: UIViewController {

    //MARK: - IBOutlets
    @IBOutlet weak var txtString1: UITextField!
    @IBOutlet weak var txtString2: UITextField!
    @IBOutlet weak var lblResults: UILabel!
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //MARK: - IBAction
    @IBAction func btnSubmitTapped(_ sender: Any) {
        if stringContainsSameCharacters() {
            lblResults.text = "Yes! It Contains same characters."
        } else {
            lblResults.text = "No! It does not contain same characters."
        }
    }
}

//MARK: - Custom methods
extension SameCharactersVC {
    private func stringContainsSameCharacters() -> Bool {
        let string1 = txtString1.text
        let string2 = txtString2.text
        
        var characters = [Character]()
        for text in string1 ?? "" {
            characters.append(text)
        }
        for text in string2 ?? "" {
            if !characters.contains(text) {
                characters.append(text)
            }
        }
        
        let fullCount = (string1?.count ?? 0) + (string2?.count ?? 0)
        return fullCount == characters.count ? false : true
    }
}
