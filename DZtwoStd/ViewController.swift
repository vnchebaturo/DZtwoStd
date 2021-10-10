//
//  ViewController.swift
//  DZtwoStd
//
//  Created by VladimirCH on 10.10.2021.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var cardButton: [BorderButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateButtonsFromModel()
        
        
    }

    private func  updateButtonsFromModel() {
        for index in cardButton.indices {
             let button = cardButton[index]
            button.setTitle(String(index+1), for: .normal)
            if index < 12 {
                button.backgroundColor = .orange //UIColor.init(red: <#T##CGFloat#>, green: <#T##CGFloat#>, blue: <#T##CGFloat#>, alpha: <#T##CGFloat#>)
            }
        }
    }

}

