//
//  TemperatureView.swift
//  ConverterApp
//
//  Created by pamuditha liyanage on 4/10/19.
//  Copyright © 2019 pamuditha liyanage. All rights reserved.
//

import UIKit

class TemperatureView: BaseConverterView {
    // MARK: Label initializers
    lazy var celciusLabel: UILabel = {
        return createLabel(title: "Temperature in Celcius")
    }()
    
    lazy var farenheitLabel: UILabel = {
        return createLabel(title: "Temperature in Fahrenheit")
    }()
    
    lazy var kelvinLabel: UILabel = {
        return createLabel(title: "Temperature in Kelvin")
    }()
    
    // MARK: Text Field initializers
    lazy var celciusField: UITextField = {
        let textField = createTextField()
        return textField
    }()
    
    lazy var farenheitField: UITextField = {
        let textField = createTextField()
        return textField
    }()
    
    lazy var kelvinField: UITextField = {
        let textField = createTextField()
        return textField
    }()
    
    override func setDefaults() {
        focusTextField(celciusField)
    }
    // MARK: Layout
    override func setupLayout() {
        self.addSubview(celciusLabel)
        self.addSubview(celciusField)
        self.addSubview(farenheitLabel)
        self.addSubview(farenheitField)
        self.addSubview(kelvinLabel)
        self.addSubview(kelvinField)
        
        celciusLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 30).isActive = true
        celciusLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30).isActive = true
        celciusLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30).isActive = true
        celciusLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        celciusField.topAnchor.constraint(equalTo: celciusLabel.bottomAnchor, constant: 8).isActive = true
        celciusField.leadingAnchor.constraint(equalTo: celciusLabel.leadingAnchor).isActive = true
        celciusField.trailingAnchor.constraint(equalTo: celciusLabel.trailingAnchor).isActive = true
        celciusField.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        farenheitLabel.topAnchor.constraint(equalTo: celciusField.bottomAnchor, constant: 8).isActive = true
        farenheitLabel.leadingAnchor.constraint(equalTo: celciusLabel.leadingAnchor).isActive = true
        farenheitLabel.trailingAnchor.constraint(equalTo: celciusLabel.trailingAnchor).isActive = true
        farenheitLabel.heightAnchor.constraint(equalTo: celciusLabel.heightAnchor).isActive = true
        
        farenheitField.topAnchor.constraint(equalTo: farenheitLabel.bottomAnchor, constant: 8).isActive = true
        farenheitField.leadingAnchor.constraint(equalTo: celciusLabel.leadingAnchor).isActive = true
        farenheitField.trailingAnchor.constraint(equalTo: celciusLabel.trailingAnchor).isActive = true
        farenheitField.heightAnchor.constraint(equalTo: celciusField.heightAnchor).isActive = true
        
        kelvinLabel.topAnchor.constraint(equalTo: farenheitField.bottomAnchor, constant: 8).isActive = true
        kelvinLabel.leadingAnchor.constraint(equalTo: celciusLabel.leadingAnchor).isActive = true
        kelvinLabel.trailingAnchor.constraint(equalTo: celciusLabel.trailingAnchor).isActive = true
        kelvinLabel.heightAnchor.constraint(equalTo: celciusLabel.heightAnchor).isActive = true
        
        kelvinField.topAnchor.constraint(equalTo: kelvinLabel.bottomAnchor, constant: 8).isActive = true
        kelvinField.leadingAnchor.constraint(equalTo: celciusLabel.leadingAnchor).isActive = true
        kelvinField.trailingAnchor.constraint(equalTo: celciusLabel.trailingAnchor).isActive = true
        kelvinField.heightAnchor.constraint(equalTo: celciusField.heightAnchor).isActive = true
        
        kelvinField.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }
    
    override func calculateData() {
        guard let textField = activeField, let stringVal = textField.text, let value = Double(stringVal) else { return }
        
        switch textField {
        case celciusField:
            farenheitField.text = "\((value * 9/5) + 32)"
            kelvinField.text = "\(value + 273.15)"
        case farenheitField:
            celciusField.text = "\((value - 32) * 5/9)"
            kelvinField.text = "\(((value - 32) * 5/9) + 273.15)"
        case kelvinField:
            farenheitField.text = "\((value - 273.15) * 9/5 + 32)"
            celciusField.text = "\(value - 273.15)"
        default:
            break
        }
    }
    
    override func clearText() {
        celciusField.text = ""
        farenheitField.text = ""
        kelvinField.text = ""
    }
}
