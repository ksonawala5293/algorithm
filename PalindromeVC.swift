//
//  PalindromeVC.swift
//  AlgoTasks
//
//  Created by Apple on 28/11/23.
//

import Foundation
import UIKit

class PalindromeVC: UIViewController {

    //MARK: - IBOutlets
    @IBOutlet weak var txtLetters: UITextField!
    @IBOutlet weak var lblResults: UILabel!
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //MARK: - IBAction
    @IBAction func btnSubmitTapped(_ sender: Any) {
        if stringIsPalindrome() {
            lblResults.text = "Yes! It is Palindrome."
        } else {
            lblResults.text = "No! It's not Palindrome."
        }
    }
}

//MARK: - Custom methods
extension PalindromeVC {
    private func stringIsPalindrome() -> Bool {
        let fulltext = txtLetters.text
        
        var characters = [Character]()
        for text in fulltext ?? "" {
            characters.append(text)
        }
        
        var reverse = [Character]()
        for character in characters.reversed() {
            reverse.append(character)
        }
        let reverseString = reverse.map{"\($0)"}.reduce("", {$0+$1})
        
        return fulltext == reverseString ? true : false
    }
}
