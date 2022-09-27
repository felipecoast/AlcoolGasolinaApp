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
        calculateButton.isEnabled = false
    }
    
    func configLabel() {
        appNameLabel.text = "Álcool OU Gasolina"
        gasolineAlcoolLabel.text = "     Preço Álcool           Preço Gasolina"
    }
    
    func configTextField() {
        alcoolTextField.placeholder = "Ex: 1.99"
        gasolineTextField.placeholder = "Ex: 2.99"
        alcoolTextField.textAlignment = .center
        gasolineTextField.textAlignment = .center
        
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
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.layer.borderWidth = 2
        textField.layer.borderColor = UIColor.blue.cgColor
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField.text == "" {
            textField.layer.borderWidth = 2
            textField.layer.borderColor = UIColor.red.cgColor
        } else {
            textField.layer.borderWidth = 0
        }
        
        if alcoolTextField.text == "" || gasolineTextField.text == "" {
            calculateButton.isEnabled = false
        } else {
            calculateButton.isEnabled = true
        }
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    @IBAction func tappedCalculateButton(_ sender: UIButton) {
    }
    
    @IBAction func tappedWritePricesButton(_ sender: UIButton) {
    }
    
}

