//
//  DistanceView.swift
//  ConverterApp
//
//  Created by pamuditha liyanage on 4/10/19.
//  Copyright © 2019 pamuditha liyanage. All rights reserved.
//

import UIKit

class DistanceView: BaseConverterView {
    // MARK: Label initializers
    lazy var metreLabel: UILabel = {
        return createLabel(title: "Length in metres (m)")
    }()
    
    lazy var milesLabel: UILabel = {
        return createLabel(title: "Length in miles")
    }()
    
    lazy var cmLabel: UILabel = {
        return createLabel(title: "Length in centi-metres (cm)")
    }()
    
    lazy var mmLabel: UILabel = {
        return createLabel(title: "Length in milli-metres (mm)")
    }()
    
    lazy var yardLabel: UILabel = {
        return createLabel(title: "Length in yards")
    }()
    
    lazy var inchLabel: UILabel = {
        return createLabel(title: "Length in inches")
    }()
    
    // MARK: Text Field initializers
    lazy var metresField: UITextField = {
        let textField = createTextField()
        return textField
    }()
    
    lazy var milesField: UITextField = {
        let textField = createTextField()
        return textField
    }()
    
    lazy var cmField: UITextField = {
        let textField = createTextField()
        return textField
    }()
    
    lazy var mmField: UITextField = {
        let textField = createTextField()
        return textField
    }()
    
    lazy var yardsField: UITextField = {
        let textField = createTextField()
        return textField
    }()
    
    lazy var inchesField: UITextField = {
        let textField = createTextField()
        return textField
    }()
    
    override func setDefaults() {
        focusTextField(metresField)
    }
    // MARK: Layout
    override func setupLayout() {
        self.addSubview(metreLabel)
        self.addSubview(metresField)
        self.addSubview(milesLabel)
        self.addSubview(milesField)
        self.addSubview(cmLabel)
        self.addSubview(cmField)
        self.addSubview(mmLabel)
        self.addSubview(mmField)
        self.addSubview(yardLabel)
        self.addSubview(yardsField)
        self.addSubview(inchLabel)
        self.addSubview(inchesField)
        
        metreLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 30).isActive = true
        metreLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30).isActive = true
        metreLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30).isActive = true
        metreLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        metresField.topAnchor.constraint(equalTo: metreLabel.bottomAnchor, constant: 8).isActive = true
        metresField.leadingAnchor.constraint(equalTo: metreLabel.leadingAnchor).isActive = true
        metresField.trailingAnchor.constraint(equalTo: metreLabel.trailingAnchor).isActive = true
        metresField.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        milesLabel.topAnchor.constraint(equalTo: metresField.bottomAnchor, constant: 8).isActive = true
        milesLabel.leadingAnchor.constraint(equalTo: metreLabel.leadingAnchor).isActive = true
        milesLabel.trailingAnchor.constraint(equalTo: metreLabel.trailingAnchor).isActive = true
        milesLabel.heightAnchor.constraint(equalTo: metreLabel.heightAnchor).isActive = true
        
        milesField.topAnchor.constraint(equalTo: milesLabel.bottomAnchor, constant: 8).isActive = true
        milesField.leadingAnchor.constraint(equalTo: metreLabel.leadingAnchor).isActive = true
        milesField.trailingAnchor.constraint(equalTo: metreLabel.trailingAnchor).isActive = true
        milesField.heightAnchor.constraint(equalTo: metresField.heightAnchor).isActive = true
        
        cmLabel.topAnchor.constraint(equalTo: milesField.bottomAnchor, constant: 8).isActive = true
        cmLabel.leadingAnchor.constraint(equalTo: metreLabel.leadingAnchor).isActive = true
        cmLabel.trailingAnchor.constraint(equalTo: metreLabel.trailingAnchor).isActive = true
        cmLabel.heightAnchor.constraint(equalTo: metreLabel.heightAnchor).isActive = true
        
        cmField.topAnchor.constraint(equalTo: cmLabel.bottomAnchor, constant: 8).isActive = true
        cmField.leadingAnchor.constraint(equalTo: metreLabel.leadingAnchor).isActive = true
        cmField.trailingAnchor.constraint(equalTo: metreLabel.trailingAnchor).isActive = true
        cmField.heightAnchor.constraint(equalTo: metresField.heightAnchor).isActive = true
        
        mmLabel.topAnchor.constraint(equalTo: cmField.bottomAnchor, constant: 8).isActive = true
        mmLabel.leadingAnchor.constraint(equalTo: metreLabel.leadingAnchor).isActive = true
        mmLabel.trailingAnchor.constraint(equalTo: metreLabel.trailingAnchor).isActive = true
        mmLabel.heightAnchor.constraint(equalTo: metreLabel.heightAnchor).isActive = true
        
        mmField.topAnchor.constraint(equalTo: mmLabel.bottomAnchor, constant: 8).isActive = true
        mmField.leadingAnchor.constraint(equalTo: metreLabel.leadingAnchor).isActive = true
        mmField.trailingAnchor.constraint(equalTo: metreLabel.trailingAnchor).isActive = true
        mmField.heightAnchor.constraint(equalTo: metresField.heightAnchor).isActive = true
        
        yardLabel.topAnchor.constraint(equalTo: mmField.bottomAnchor, constant: 8).isActive = true
        yardLabel.leadingAnchor.constraint(equalTo: metreLabel.leadingAnchor).isActive = true
        yardLabel.trailingAnchor.constraint(equalTo: metreLabel.trailingAnchor).isActive = true
        yardLabel.heightAnchor.constraint(equalTo: metreLabel.heightAnchor).isActive = true
        
        yardsField.topAnchor.constraint(equalTo: yardLabel.bottomAnchor, constant: 8).isActive = true
        yardsField.leadingAnchor.constraint(equalTo: metreLabel.leadingAnchor).isActive = true
        yardsField.trailingAnchor.constraint(equalTo: metreLabel.trailingAnchor).isActive = true
        yardsField.heightAnchor.constraint(equalTo: metresField.heightAnchor).isActive = true
        
        inchLabel.topAnchor.constraint(equalTo: yardsField.bottomAnchor, constant: 8).isActive = true
        inchLabel.leadingAnchor.constraint(equalTo: metreLabel.leadingAnchor).isActive = true
        inchLabel.trailingAnchor.constraint(equalTo: metreLabel.trailingAnchor).isActive = true
        inchLabel.heightAnchor.constraint(equalTo: metreLabel.heightAnchor).isActive = true
        
        inchesField.topAnchor.constraint(equalTo: inchLabel.bottomAnchor, constant: 8).isActive = true
        inchesField.leadingAnchor.constraint(equalTo: metreLabel.leadingAnchor).isActive = true
        inchesField.trailingAnchor.constraint(equalTo: metreLabel.trailingAnchor).isActive = true
        inchesField.heightAnchor.constraint(equalTo: metresField.heightAnchor).isActive = true
        
        inchesField.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }
    
    override func calculateData() {
        guard let textField = activeField, let stringVal = textField.text, let value = Double(stringVal) else { return }
        
        switch textField {
        case metresField:
            milesField.text = "\(value * 0.000621)"
            cmField.text = "\(value * 100)"
            mmField.text = "\(value * 1000)"
            yardsField.text = "\(value * 1.094)"
            inchesField.text = "\(value * 39.37)"
        case milesField:
            metresField.text = "\(value * 1609.344)"
            cmField.text = "\(value * 160934.4)"
            mmField.text = "\(value * 1609344)"
            yardsField.text = "\(value * 1760)"
            inchesField.text = "\(value * 63360)"
        case cmField:
            metresField.text = "\(value * 0.01)"
            milesField.text = "\(value / 160934.4 )"
            mmField.text = "\(value * 10)"
            yardsField.text = "\(value / 0.0109)"
            inchesField.text = "\(value * 0.394)"
        case mmField:
            metresField.text = "\(value * 0.001)"
            milesField.text = "\(value / 1.609e+6)"
            cmField.text = "\(value * 0.1)"
            yardsField.text = "\(value / 914.4)"
            inchesField.text = "\(value / 25.4)"
        case inchesField:
            metresField.text = "\(value * 0.0254)"
            milesField.text = "\(value / 63360)"
            cmField.text = "\(value * 2.54)"
            yardsField.text = "\(value * 0.0278)"
            mmField.text = "\(value * 25.4)"
        default:
            break
        }
    }
    
    override func clearText() {
        metresField.text = ""
        cmField.text = ""
        mmField.text = ""
        yardsField.text = ""
        inchesField.text = ""
    }
}
