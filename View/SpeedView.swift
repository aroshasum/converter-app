//
//  SpeedView.swift
//  ConverterApp
//
//  Created by pamuditha liyanage on 4/10/19.
//  Copyright © 2019 pamuditha liyanage. All rights reserved.
//

import UIKit

class SpeedView: BaseConverterView {
    // MARK: Label initializers
    lazy var msLabel: UILabel = {
        return createLabel(title: "Weight in killograms (kg)")
    }()
    
    lazy var kmhLabel: UILabel = {
        return createLabel(title: "Weight in grams (g)")
    }()
    
    lazy var milehLabel: UILabel = {
        return createLabel(title: "Weight in ounces")
    }()
    
    lazy var nauticalhLabel: UILabel = {
        return createLabel(title: "Weight in pounds")
    }()
    
    // MARK: Text Field initializers
    lazy var msField: UITextField = {
        let textField = createTextField()
        return textField
    }()
    
    lazy var kmhField: UITextField = {
        let textField = createTextField()
        return textField
    }()
    
    lazy var milehField: UITextField = {
        let textField = createTextField()
        return textField
    }()
    
    lazy var nauticalhField: UITextField = {
        let textField = createTextField()
        return textField
    }()
    
    override func setDefaults() {
        focusTextField(msField)
    }
    // MARK: Layout
    override func setupLayout() {
        self.addSubview(msLabel)
        self.addSubview(msField)
        self.addSubview(kmhLabel)
        self.addSubview(kmhField)
        self.addSubview(milehLabel)
        self.addSubview(milehField)
        self.addSubview(nauticalhLabel)
        self.addSubview(nauticalhField)
        
        msLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 30).isActive = true
        msLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30).isActive = true
        msLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30).isActive = true
        msLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        msField.topAnchor.constraint(equalTo: msLabel.bottomAnchor, constant: 8).isActive = true
        msField.leadingAnchor.constraint(equalTo: msLabel.leadingAnchor).isActive = true
        msField.trailingAnchor.constraint(equalTo: msLabel.trailingAnchor).isActive = true
        msField.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        kmhLabel.topAnchor.constraint(equalTo: msField.bottomAnchor, constant: 8).isActive = true
        kmhLabel.leadingAnchor.constraint(equalTo: msLabel.leadingAnchor).isActive = true
        kmhLabel.trailingAnchor.constraint(equalTo: msLabel.trailingAnchor).isActive = true
        kmhLabel.heightAnchor.constraint(equalTo: msLabel.heightAnchor).isActive = true
        
        kmhField.topAnchor.constraint(equalTo: kmhLabel.bottomAnchor, constant: 8).isActive = true
        kmhField.leadingAnchor.constraint(equalTo: msLabel.leadingAnchor).isActive = true
        kmhField.trailingAnchor.constraint(equalTo: msLabel.trailingAnchor).isActive = true
        kmhField.heightAnchor.constraint(equalTo: msField.heightAnchor).isActive = true
        
        milehLabel.topAnchor.constraint(equalTo: kmhField.bottomAnchor, constant: 8).isActive = true
        milehLabel.leadingAnchor.constraint(equalTo: msLabel.leadingAnchor).isActive = true
        milehLabel.trailingAnchor.constraint(equalTo: msLabel.trailingAnchor).isActive = true
        milehLabel.heightAnchor.constraint(equalTo: msLabel.heightAnchor).isActive = true
        
        milehField.topAnchor.constraint(equalTo: milehLabel.bottomAnchor, constant: 8).isActive = true
        milehField.leadingAnchor.constraint(equalTo: msLabel.leadingAnchor).isActive = true
        milehField.trailingAnchor.constraint(equalTo: msLabel.trailingAnchor).isActive = true
        milehField.heightAnchor.constraint(equalTo: msField.heightAnchor).isActive = true
        
        nauticalhLabel.topAnchor.constraint(equalTo: milehField.bottomAnchor, constant: 8).isActive = true
        nauticalhLabel.leadingAnchor.constraint(equalTo: msLabel.leadingAnchor).isActive = true
        nauticalhLabel.trailingAnchor.constraint(equalTo: msLabel.trailingAnchor).isActive = true
        nauticalhLabel.heightAnchor.constraint(equalTo: msLabel.heightAnchor).isActive = true
        
        nauticalhField.topAnchor.constraint(equalTo: nauticalhLabel.bottomAnchor, constant: 8).isActive = true
        nauticalhField.leadingAnchor.constraint(equalTo: msLabel.leadingAnchor).isActive = true
        nauticalhField.trailingAnchor.constraint(equalTo: msLabel.trailingAnchor).isActive = true
        nauticalhField.heightAnchor.constraint(equalTo: msField.heightAnchor).isActive = true
        
        nauticalhField.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }
    
    override func calculateData() {
        guard let textField = activeField, let stringVal = textField.text, let value = Double(stringVal) else { return }
        
        switch textField {
        case msField:
            kmhField.text = "\(value * 3.6)"
            milehField.text = "\(value * 2.237)"
            nauticalhField.text = "\(value * 1.944)"
        case kmhField:
            msField.text = "\(value * 0.278)"
            milehField.text = "\(value * 0.621)"
            nauticalhField.text = "\(value * 0.54)"
        case milehField:
            msField.text = "\(value * 0.447)"
            kmhField.text = "\(value * 1.609)"
            nauticalhField.text = "\(value * 0.869)"
        case nauticalhField:
            msField.text = "\(value * 0.514)"
            kmhField.text = "\(value * 1.852)"
            milehField.text = "\(value * 1.151)"
        default:
            break
        }
    }
    
    override func clearText() {
        msField.text = ""
        kmhField.text = ""
        milehField.text = ""
        nauticalhField.text = ""
    }
}
