//
//  LiquidVolumeView.swift
//  ConverterApp
//
//  Created by pamuditha liyanagee on 4/10/19.
//  Copyright © 2019 pamuditha liyanage. All rights reserved.
//

import UIKit

class LiquidVolumeView: BaseConverterView {
    // MARK: Label initializers
    lazy var gallonLabel: UILabel = {
        return createLabel(title: "Volume in gallon")
    }()
    
    lazy var litreLabel: UILabel = {
        return createLabel(title: "Volume in litre (L)")
    }()
    
    lazy var pintLabel: UILabel = {
        return createLabel(title: "Volume in UK Pint")
    }()
    
    lazy var ounceLabel: UILabel = {
        return createLabel(title: "Volume in Fluid Ounce")
    }()
    
    lazy var mlLabel: UILabel = {
        return createLabel(title: "Volume in Milli-Litre (ml)")
    }()
    
    // MARK: Text Field initializers
    lazy var gallonField: UITextField = {
        let textField = createTextField()
        return textField
    }()
    
    lazy var litreField: UITextField = {
        let textField = createTextField()
        return textField
    }()
    
    lazy var pintField: UITextField = {
        let textField = createTextField()
        return textField
    }()
    
    lazy var ounceField: UITextField = {
        let textField = createTextField()
        return textField
    }()
    
    lazy var mlField: UITextField = {
        let textField = createTextField()
        return textField
    }()
    
    override func setDefaults() {
        focusTextField(gallonField)
    }
    // MARK: Layout
    override func setupLayout() {
        self.addSubview(gallonLabel)
        self.addSubview(gallonField)
        self.addSubview(litreLabel)
        self.addSubview(litreField)
        self.addSubview(pintLabel)
        self.addSubview(pintField)
        self.addSubview(ounceLabel)
        self.addSubview(ounceField)
        self.addSubview(mlLabel)
        self.addSubview(mlField)
        
        gallonLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 30).isActive = true
        gallonLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30).isActive = true
        gallonLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30).isActive = true
        gallonLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        gallonField.topAnchor.constraint(equalTo: gallonLabel.bottomAnchor, constant: 8).isActive = true
        gallonField.leadingAnchor.constraint(equalTo: gallonLabel.leadingAnchor).isActive = true
        gallonField.trailingAnchor.constraint(equalTo: gallonLabel.trailingAnchor).isActive = true
        gallonField.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        litreLabel.topAnchor.constraint(equalTo: gallonField.bottomAnchor, constant: 8).isActive = true
        litreLabel.leadingAnchor.constraint(equalTo: gallonLabel.leadingAnchor).isActive = true
        litreLabel.trailingAnchor.constraint(equalTo: gallonLabel.trailingAnchor).isActive = true
        litreLabel.heightAnchor.constraint(equalTo: gallonLabel.heightAnchor).isActive = true
        
        litreField.topAnchor.constraint(equalTo: litreLabel.bottomAnchor, constant: 8).isActive = true
        litreField.leadingAnchor.constraint(equalTo: gallonLabel.leadingAnchor).isActive = true
        litreField.trailingAnchor.constraint(equalTo: gallonLabel.trailingAnchor).isActive = true
        litreField.heightAnchor.constraint(equalTo: gallonField.heightAnchor).isActive = true
        
        pintLabel.topAnchor.constraint(equalTo: litreField.bottomAnchor, constant: 8).isActive = true
        pintLabel.leadingAnchor.constraint(equalTo: gallonLabel.leadingAnchor).isActive = true
        pintLabel.trailingAnchor.constraint(equalTo: gallonLabel.trailingAnchor).isActive = true
        pintLabel.heightAnchor.constraint(equalTo: gallonLabel.heightAnchor).isActive = true
        
        pintField.topAnchor.constraint(equalTo: pintLabel.bottomAnchor, constant: 8).isActive = true
        pintField.leadingAnchor.constraint(equalTo: gallonLabel.leadingAnchor).isActive = true
        pintField.trailingAnchor.constraint(equalTo: gallonLabel.trailingAnchor).isActive = true
        pintField.heightAnchor.constraint(equalTo: gallonField.heightAnchor).isActive = true
        
        ounceLabel.topAnchor.constraint(equalTo: pintField.bottomAnchor, constant: 8).isActive = true
        ounceLabel.leadingAnchor.constraint(equalTo: gallonLabel.leadingAnchor).isActive = true
        ounceLabel.trailingAnchor.constraint(equalTo: gallonLabel.trailingAnchor).isActive = true
        ounceLabel.heightAnchor.constraint(equalTo: gallonLabel.heightAnchor).isActive = true
        
        ounceField.topAnchor.constraint(equalTo: ounceLabel.bottomAnchor, constant: 8).isActive = true
        ounceField.leadingAnchor.constraint(equalTo: gallonLabel.leadingAnchor).isActive = true
        ounceField.trailingAnchor.constraint(equalTo: gallonLabel.trailingAnchor).isActive = true
        ounceField.heightAnchor.constraint(equalTo: gallonField.heightAnchor).isActive = true
        
        mlLabel.topAnchor.constraint(equalTo: ounceField.bottomAnchor, constant: 8).isActive = true
        mlLabel.leadingAnchor.constraint(equalTo: gallonLabel.leadingAnchor).isActive = true
        mlLabel.trailingAnchor.constraint(equalTo: gallonLabel.trailingAnchor).isActive = true
        mlLabel.heightAnchor.constraint(equalTo: gallonLabel.heightAnchor).isActive = true
        
        mlField.topAnchor.constraint(equalTo: mlLabel.bottomAnchor, constant: 8).isActive = true
        mlField.leadingAnchor.constraint(equalTo: gallonLabel.leadingAnchor).isActive = true
        mlField.trailingAnchor.constraint(equalTo: gallonLabel.trailingAnchor).isActive = true
        mlField.heightAnchor.constraint(equalTo: gallonField.heightAnchor).isActive = true
        
        mlField.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }
    
    override func calculateData() {
        guard let textField = activeField, let stringVal = textField.text, let value = Double(stringVal) else { return }
        
        switch textField {
        case litreField:
            mlField.text = "\(value * 1000)"
            gallonField.text = "\(value / 3.785)"
            ounceField.text = "\(value * 33.814)"
            pintField.text = "\(value * 1.76)"
        case mlField:
            litreField.text = "\(value / 1000)"
            gallonField.text = "\(value * 0.000264)"
            ounceField.text = "\(value * 0.0338)"
            pintField.text = "\(value * 0.00176)"
        case gallonField:
            mlField.text = "\(value * 3785.412)"
            litreField.text = "\(value * 3.785)"
            ounceField.text = "\(value * 128)"
            pintField.text = "\(value * 6.661)"
        case ounceField:
            mlField.text = "\(value * 29.574)"
            gallonField.text = "\(value * 0.00781)"
            litreField.text = "\(value * 0.0296)"
            pintField.text = "\(value * 0.052)"
        case pintField:
            mlField.text = "\(value * 568.261)"
            gallonField.text = "\(value * 0.15)"
            ounceField.text = "\(value * 19.215)"
            litreField.text = "\(value * 0.568)"
        default:
            break
        }
    }
    
    override func clearText() {
        litreField.text = ""
        mlField.text = ""
        gallonField.text = ""
        ounceField.text = ""
        pintField.text = ""
    }
}
