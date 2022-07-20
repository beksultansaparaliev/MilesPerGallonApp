//
//  ViewController.swift
//  MPG
//
//  Created by Masaie on 20/7/22.
//

import UIKit

class Viewer: UIViewController {

    @IBOutlet var litresTextField: UITextField!
    @IBOutlet var kmTextField: UITextField!
    @IBOutlet var resultLabel: UILabel!
    
    @IBOutlet var resultView: UIView! {
        didSet {
            resultView.layer.cornerRadius = 5
        }
    }
    
    @IBOutlet var calculatesButton: UIButton! {
        didSet {
            calculatesButton.layer.cornerRadius = 10
        }
    }
    
    private var controller: Controller!
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        controller = Controller(viewer: self)
    }

    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        controller.litres = litresTextField.text ?? ""
        controller.km = kmTextField.text ?? ""
        controller.sendToModel()
    }
    
    public func update(result: String) {
        resultLabel.text = result
    }
}

