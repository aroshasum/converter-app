//
//  WeightView.swift
//  ConverterApp
//
//  Created by pamuditha liyanage on 4/10/19.
//  Copyright © 2019 pamuditha liyanage. All rights reserved.
//

import UIKit

class WeightView: BaseConverterView {
    // MARK: Label initializers
    lazy var kilogramsLabel: UILabel = {
        return createLabel(title: "Weight in killograms (kg)")
    }()
    
    lazy var gramsLabel: UILabel = {
        return createLabel(title: "Weight in grams (g)")
    }()
    
    lazy var ouncesLabel: UILabel = {
        return createLabel(title: "Weight in ounces")
    }()
    
    lazy var poundsLabel: UILabel = {
        return createLabel(title: "Weight in pounds")
    }()
    
    lazy var stonePoundsLabel: UILabel = {
        return createLabel(title: "Weight in stone-pounds")
    }()
    
    // MARK: Text Field initializers
    lazy var kilogramsField: UITextField = {
        let textField = createTextField()
        return textField
    }()
    
    lazy var gramsField: UITextField = {
        let textField = createTextField()
        return textField
    }()
    
    lazy var ouncesField: UITextField = {
        let textField = createTextField()
        return textField
    }()
    
    lazy var poundsField: UITextField = {
        let textField = createTextField()
        return textField
    }()
    
    lazy var stonePoundsField: UITextField = {
        let textField = createTextField()
        return textField
    }()
    
    override func setDefaults() {
        focusTextField(kilogramsField)
    }
    // MARK: Layout
    override func setupLayout() {
        self.addSubview(kilogramsLabel)
        self.addSubview(kilogramsField)
        self.addSubview(gramsLabel)
        self.addSubview(gramsField)
        self.addSubview(ouncesLabel)
        self.addSubview(ouncesField)
        self.addSubview(poundsLabel)
        self.addSubview(poundsField)
        self.addSubview(stonePoundsLabel)
        self.addSubview(stonePoundsField)
        
        kilogramsLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 30).isActive = true
        kilogramsLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30).isActive = true
        kilogramsLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30).isActive = true
        kilogramsLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        kilogramsField.topAnchor.constraint(equalTo: kilogramsLabel.bottomAnchor, constant: 8).isActive = true
        kilogramsField.leadingAnchor.constraint(equalTo: kilogramsLabel.leadingAnchor).isActive = true
        kilogramsField.trailingAnchor.constraint(equalTo: kilogramsLabel.trailingAnchor).isActive = true
        kilogramsField.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        gramsLabel.topAnchor.constraint(equalTo: kilogramsField.bottomAnchor, constant: 8).isActive = true
        gramsLabel.leadingAnchor.constraint(equalTo: kilogramsLabel.leadingAnchor).isActive = true
        gramsLabel.trailingAnchor.constraint(equalTo: kilogramsLabel.trailingAnchor).isActive = true
        gramsLabel.heightAnchor.constraint(equalTo: kilogramsLabel.heightAnchor).isActive = true
        
        gramsField.topAnchor.constraint(equalTo: gramsLabel.bottomAnchor, constant: 8).isActive = true
        gramsField.leadingAnchor.constraint(equalTo: kilogramsLabel.leadingAnchor).isActive = true
        gramsField.trailingAnchor.constraint(equalTo: kilogramsLabel.trailingAnchor).isActive = true
        gramsField.heightAnchor.constraint(equalTo: kilogramsField.heightAnchor).isActive = true
        
        ouncesLabel.topAnchor.constraint(equalTo: gramsField.bottomAnchor, constant: 8).isActive = true
        ouncesLabel.leadingAnchor.constraint(equalTo: kilogramsLabel.leadingAnchor).isActive = true
        ouncesLabel.trailingAnchor.constraint(equalTo: kilogramsLabel.trailingAnchor).isActive = true
        ouncesLabel.heightAnchor.constraint(equalTo: kilogramsLabel.heightAnchor).isActive = true
        
        ouncesField.topAnchor.constraint(equalTo: ouncesLabel.bottomAnchor, constant: 8).isActive = true
        ouncesField.leadingAnchor.constraint(equalTo: kilogramsLabel.leadingAnchor).isActive = true
        ouncesField.trailingAnchor.constraint(equalTo: kilogramsLabel.trailingAnchor).isActive = true
        ouncesField.heightAnchor.constraint(equalTo: kilogramsField.heightAnchor).isActive = true
        
        poundsLabel.topAnchor.constraint(equalTo: ouncesField.bottomAnchor, constant: 8).isActive = true
        poundsLabel.leadingAnchor.constraint(equalTo: kilogramsLabel.leadingAnchor).isActive = true
        poundsLabel.trailingAnchor.constraint(equalTo: kilogramsLabel.trailingAnchor).isActive = true
        poundsLabel.heightAnchor.constraint(equalTo: kilogramsLabel.heightAnchor).isActive = true
        
        poundsField.topAnchor.constraint(equalTo: poundsLabel.bottomAnchor, constant: 8).isActive = true
        poundsField.leadingAnchor.constraint(equalTo: kilogramsLabel.leadingAnchor).isActive = true
        poundsField.trailingAnchor.constraint(equalTo: kilogramsLabel.trailingAnchor).isActive = true
        poundsField.heightAnchor.constraint(equalTo: kilogramsField.heightAnchor).isActive = true
        
        stonePoundsLabel.topAnchor.constraint(equalTo: poundsField.bottomAnchor, constant: 8).isActive = true
        stonePoundsLabel.leadingAnchor.constraint(equalTo: kilogramsLabel.leadingAnchor).isActive = true
        stonePoundsLabel.trailingAnchor.constraint(equalTo: kilogramsLabel.trailingAnchor).isActive = true
        stonePoundsLabel.heightAnchor.constraint(equalTo: kilogramsLabel.heightAnchor).isActive = true
        
        stonePoundsField.topAnchor.constraint(equalTo: stonePoundsLabel.bottomAnchor, constant: 8).isActive = true
        stonePoundsField.leadingAnchor.constraint(equalTo: kilogramsLabel.leadingAnchor).isActive = true
        stonePoundsField.trailingAnchor.constraint(equalTo: kilogramsLabel.trailingAnchor).isActive = true
        stonePoundsField.heightAnchor.constraint(equalTo: kilogramsField.heightAnchor).isActive = true
        
        stonePoundsField.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }
    
    override func calculateData() {
        guard let textField = activeField, let stringVal = textField.text, let value = Double(stringVal) else { return }
        
        switch textField {
        case kilogramsField:
            gramsField.text = "\(value * 1000)"
            ouncesField.text = "\(value * 35.274)"
            poundsField.text = "\(value * 2.205)"
            stonePoundsField.text = "\(value * 0.157)"
        case gramsField:
            kilogramsField.text = "\(value / 1000)"
            ouncesField.text = "\(value * 0.0353)"
            poundsField.text = "\(value * 0.0022)"
            stonePoundsField.text = "\(value * 28247.5114)"
        case ouncesField:
            kilogramsField.text = "\(value * 0.0283)"
            gramsField.text = "\(value * 28.35)"
            poundsField.text = "\(value * 0.0625)"
            stonePoundsField.text = "\(value * 996.4016)"
        case poundsField:
            kilogramsField.text = "\(value * 0.454)"
            gramsField.text = "\(value * 453.592)"
            ouncesField.text = "\(value * 16)"
            stonePoundsField.text = "\(value * 0.0714)"
        default:
            break
        }
    }
    
    override func clearText() {
        kilogramsField.text = ""
        gramsField.text = ""
        ouncesField.text = ""
        poundsField.text = ""
        stonePoundsField.text = ""
    }
    
    override func saveData() {
        guard let textField = activeField, let stringVal = textField.text, let value = Double(stringVal), value != 0 else { return }
        
        guard let kilogramsString = kilogramsField.text, let kgValue = Double(kilogramsString), kgValue != 0 else { return }
        guard let gramsString = gramsField.text, let gValue = Double(gramsString), gValue != 0 else { return }
        guard let ouncesString = ouncesField.text, let ouncesValue = Double(ouncesString), ouncesValue != 0 else { return }
        guard let poundsString = ouncesField.text, let poundsValue = Double(poundsString), poundsValue != 0 else { return }
        guard let stonePoundsString = ouncesField.text, let stonePoundsValue = Double(stonePoundsString), stonePoundsValue != 0 else { return }
        
        var items: [String] = UserDefaults.standard.value(forKey: userDataKey) as? [String] ?? []
        
        if items.count == 5 {
            items.removeFirst()
        }
        
        items.append("\(kgValue) kg = \(gValue) g = \(ouncesValue) ounces = \(poundsValue) pounds = \(stonePoundsValue) stone pounds")
        UserDefaults.standard.set(items, forKey: userDataKey)
        UserDefaults.standard.synchronize()
    }
}
