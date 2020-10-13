//
//  BaseConverterView.swift
//  ConverterApp
//
//  Created by pamuditha liyanage on 4/10/19.
//  Copyright © 2019 pamuditha liyanage. All rights reserved.
//

import UIKit

class BaseConverterView: UIView, UITextFieldDelegate {
    var activeField: UITextField?
    var userDataKey: String
    
    init(userDataKey: String) {
        self.userDataKey = userDataKey
        super.init(frame: CGRect.zero)
        setupLayout()
        setDefaults()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Helpers
    func setupLayout() {
        
    }
    
    func setDefaults() {
        
    }
    
    func clearText() {
        
    }
    
    func updateKeyPress(inputCharacter: String) {
        let currentText = activeField?.text ?? ""
        
        if inputCharacter == "0" && currentText.starts(with: "0") && !currentText.starts(with: "0.") {
            return
        }
        
        if inputCharacter == "." && (currentText.firstIndex(of: ".") != nil || currentText.count == 0) {
            return
        }
        
        if currentText.starts(with: "0") && !currentText.starts(with: "0.") {
            activeField?.text = inputCharacter
        } else {
            activeField?.text?.append(inputCharacter)
        }
        
        calculateData()
    }
    
    func fetchData() -> [String] {
        let items: [String] = UserDefaults.standard.value(forKey: userDataKey) as? [String] ?? []
        
        return items
    }
    
    func saveData() {
    }
    
    func calculateData() {
        
    }
    
    func negationUpdate() {
        guard let textField = activeField, let stringVal = textField.text, stringVal != "", let value = Double(stringVal) else { return }
        
        if value != 0 {
            activeField?.text = "\(value * -1)"
            calculateData()
        }
    }
    
    func focusTextField(_ textField: UITextField) {
        activeField?.layer.borderColor = nil
        activeField = textField
        activeField?.layer.borderColor = UIColor.red.cgColor
    }
    
    func createLabel(title: String) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = title
        
        return label
    }
    
    func createTextField() -> UITextField {
        let textField =  UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Enter text here"
        textField.font = UIFont.systemFont(ofSize: 15)
        textField.borderStyle = UITextField.BorderStyle.roundedRect
        textField.autocorrectionType = UITextAutocorrectionType.no
        textField.keyboardType = UIKeyboardType.default
        textField.returnKeyType = UIReturnKeyType.done
        textField.clearButtonMode = UITextField.ViewMode.whileEditing
        textField.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        textField.delegate = self
        textField.layer.borderWidth = 1.0
        
        return textField
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        focusTextField(textField)
        textField.resignFirstResponder()
    }
}
