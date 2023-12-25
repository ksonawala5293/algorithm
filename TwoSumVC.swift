//
//  TwoSumVC.swift
//  AlgoTasks
//
//  Created by Apple on 29/11/23.
//

import UIKit

class TwoSumVC: UIViewController {

    @IBOutlet weak var lblResults: UILabel!
    @IBOutlet weak var txtSum: UITextField!
    @IBOutlet weak var txtNumbers: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func btnCheckTapped(_ sender: Any) {
        lblResults.text = "\(CheckTwoSumNumbers())"
    }
}

//MARK: - Custom methods
extension TwoSumVC {
    private func CheckTwoSumNumbers() -> [Int] {
        let stringNumbers = txtNumbers.text
        guard let target = Int(txtSum.text ?? "") else {return []}
        
        var numbers = [Int]()
        for text in stringNumbers ?? "" {
            numbers.append(Int(String(text)) ?? 0)
        }
        
        var dict = [Int: Int]()
        for (index,value) in numbers.enumerated() {
            dict[value] = index
        }
        
        for (index, value) in numbers.enumerated() {
            if let otherIndex = dict[target - value], otherIndex != index {
                return [index, otherIndex]
            }
        }
        
        return []
    }
}
