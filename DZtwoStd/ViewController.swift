//
//  ViewController.swift
//  DZtwoStd
//
//  Created by VladimirCH on 10.10.2021.
//

import UIKit

class ViewController: UIViewController {
    
    let background = UIImageView(image: #imageLiteral(resourceName: "2"))

    
    @IBOutlet var cardButton: [BorderButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green

        //setupConstraints()

        updateButtonsFromModel()
        
        
    }

    private func  updateButtonsFromModel() {
        for index in cardButton.indices {
             let button = cardButton[index]
            button.setTitle(String(index+1), for: .normal)
            if index < 12 {
                button.backgroundColor = .orange
            }
        }
    }
    
//    private func setupConstraints() {
//        //настройки фона
//        background.translatesAutoresizingMaskIntoConstraints = false    //свойство подключает маску
//        view.addSubview(background)
//        NSLayoutConstraint.activate([
//            background.heightAnchor.constraint(equalToConstant: 900),           // картинка высотой 900
//            background.widthAnchor.constraint(equalToConstant: 415),            // ширина картикин
//            background.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),  //крепим к верху с отступом 0
//            background.centerXAnchor.constraint(equalTo: view.centerXAnchor)    //привязка в центру
//        ])
//    }

}

