//
//  ViewController.swift
//  DesafioAppTextFieldCursoRep
//
//  Created by Felipe Almeida on 26/09/22.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var appNameLabel: UILabel!
    @IBOutlet weak var gasolineAlcoholLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var alcoholTextField: UITextField!
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
        gasolineAlcoholLabel.text = "     Preço Álcool           Preço Gasolina"
        resultLabel.text = "Resultado"
    }
    
    func configTextField() {
        alcoholTextField.placeholder = "Ex: 1.99"
        gasolineTextField.placeholder = "Ex: 2.99"
        alcoholTextField.textAlignment = .center
        gasolineTextField.textAlignment = .center
        
        alcoholTextField.keyboardType = .decimalPad
        gasolineTextField.keyboardType = .decimalPad
        
        alcoholTextField.delegate = self
        gasolineTextField.delegate = self
    }
    
    func configButton() {
        calculateButton.setTitle("Calcular", for: .normal)
        calculateButton.backgroundColor = .blue
        calculateButton.setTitleColor(.white, for: .normal)
        
        writePricesButton.setTitle("Digite os Preços!", for: .normal)
        writePricesButton.backgroundColor = .blue
        writePricesButton.setTitleColor(.white, for: .normal)
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
        
        if alcoholTextField.text == "" || gasolineTextField.text == "" {
            calculateButton.isEnabled = false
        } else {
            calculateButton.isEnabled = true
        }
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func calculate() {
        let alcoholValue: Double = Double((alcoholTextField.text ?? "0.0").replacingOccurrences(of: ",", with: ".")) ?? 0.0
        let gasolineValue: Double = Double((gasolineTextField.text ?? "0.0").replacingOccurrences(of: ",", with: ".")) ?? 0.0
        
        if alcoholValue / gasolineValue > 0.70 {
            resultLabel.text = "É melhor ir de gasolina."
        } else if alcoholValue / gasolineValue < 0.70 {
            resultLabel.text = "É melhor ir de alcool."
        } else {
            resultLabel.text = "Valor inválido."
        }
    }
    
    

    @IBAction func tappedCalculateButton(_ sender: UIButton) {
        calculate()
    }
    
    @IBAction func tappedWritePricesButton(_ sender: UIButton) {
    }
    
}

//decimalpad
