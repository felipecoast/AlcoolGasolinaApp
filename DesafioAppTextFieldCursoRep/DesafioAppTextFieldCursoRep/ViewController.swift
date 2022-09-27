//
//  ViewController.swift
//  DesafioAppTextFieldCursoRep
//
//  Created by Felipe Almeida on 26/09/22.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var appNameLabel: UILabel!
    @IBOutlet weak var gasolineAlcoolLabel: UILabel!
    
    @IBOutlet weak var alcoolTextField: UITextField!
    @IBOutlet weak var gasolineTextField: UITextField!
    
    @IBOutlet weak var calculateButton: UIButton!
    @IBOutlet weak var writePricesButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGreen
        configLabel()
        configTextField()
        configButton()
    }
    
    func configLabel() {
        appNameLabel.text = "Álcool OU Gasolina"
        gasolineAlcoolLabel.text = "     Preço Álcool           Preço Gasolina"
    }
    
    func configTextField() {
        alcoolTextField.placeholder = "Ex: 1.99"
        gasolineTextField.placeholder = "Ex: 2.99"
        
        alcoolTextField.delegate = self
        gasolineTextField.delegate = self
    }
    
    func configButton() {
        calculateButton.setTitle("Calcular", for: .normal)
        calculateButton.backgroundColor = .blue
        calculateButton.tintColor = .white
        
        writePricesButton.setTitle("Digite os Preços!", for: .normal)
        writePricesButton.backgroundColor = .blue
        writePricesButton.tintColor = .white
    }

    @IBAction func tappedCalculateButton(_ sender: UIButton) {
    }
    
    @IBAction func tappedWritePricesButton(_ sender: UIButton) {
    }
    
}

