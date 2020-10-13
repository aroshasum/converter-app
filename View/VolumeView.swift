//
//  VolumeView.swift
//  ConverterApp
//
//  Created by pamuditha liyanage on 4/10/19.
//  Copyright © 2019 pamuditha liyanage. All rights reserved.
//

import UIKit

class VolumeView: BaseConverterView {
    // MARK: Label initializers
    lazy var meterLabel: UILabel = {
        return createLabel(title: "Volume in m3")
    }()
    
    lazy var centimeterLabel: UILabel = {
        return createLabel(title: "Volume in cm3")
    }()
    
    lazy var milimiterLabel: UILabel = {
        return createLabel(title: "Volume in mm3")
    }()
    
    // MARK: Text Field initializers
    lazy var meterField: UITextField = {
        let textField = createTextField()
        return textField
    }()
    
    lazy var centimeterField: UITextField = {
        let textField = createTextField()
        return textField
    }()
    
    lazy var milimiterField: UITextField = {
        let textField = createTextField()
        return textField
    }()
    
    override func setDefaults() {
        focusTextField(meterField)
    }
    // MARK: Layout
    override func setupLayout() {
        self.addSubview(meterLabel)
        self.addSubview(meterField)
        self.addSubview(centimeterLabel)
        self.addSubview(centimeterField)
        self.addSubview(milimiterLabel)
        self.addSubview(milimiterField)
        
        meterLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 30).isActive = true
        meterLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30).isActive = true
        meterLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30).isActive = true
        meterLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        meterField.topAnchor.constraint(equalTo: meterLabel.bottomAnchor, constant: 8).isActive = true
        meterField.leadingAnchor.constraint(equalTo: meterLabel.leadingAnchor).isActive = true
        meterField.trailingAnchor.constraint(equalTo: meterLabel.trailingAnchor).isActive = true
        meterField.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        centimeterLabel.topAnchor.constraint(equalTo: meterField.bottomAnchor, constant: 8).isActive = true
        centimeterLabel.leadingAnchor.constraint(equalTo: meterLabel.leadingAnchor).isActive = true
        centimeterLabel.trailingAnchor.constraint(equalTo: meterLabel.trailingAnchor).isActive = true
        centimeterLabel.heightAnchor.constraint(equalTo: meterLabel.heightAnchor).isActive = true
        
        centimeterField.topAnchor.constraint(equalTo: centimeterLabel.bottomAnchor, constant: 8).isActive = true
        centimeterField.leadingAnchor.constraint(equalTo: meterLabel.leadingAnchor).isActive = true
        centimeterField.trailingAnchor.constraint(equalTo: meterLabel.trailingAnchor).isActive = true
        centimeterField.heightAnchor.constraint(equalTo: meterField.heightAnchor).isActive = true
        
        milimiterLabel.topAnchor.constraint(equalTo: centimeterField.bottomAnchor, constant: 8).isActive = true
        milimiterLabel.leadingAnchor.constraint(equalTo: meterLabel.leadingAnchor).isActive = true
        milimiterLabel.trailingAnchor.constraint(equalTo: meterLabel.trailingAnchor).isActive = true
        milimiterLabel.heightAnchor.constraint(equalTo: meterLabel.heightAnchor).isActive = true
        
        milimiterField.topAnchor.constraint(equalTo: milimiterLabel.bottomAnchor, constant: 8).isActive = true
        milimiterField.leadingAnchor.constraint(equalTo: meterLabel.leadingAnchor).isActive = true
        milimiterField.trailingAnchor.constraint(equalTo: meterLabel.trailingAnchor).isActive = true
        milimiterField.heightAnchor.constraint(equalTo: meterField.heightAnchor).isActive = true
        
        milimiterField.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }
    
    override func calculateData() {
        guard let textField = activeField, let stringVal = textField.text, let value = Double(stringVal) else { return }
        
        switch textField {
        case meterField:
            centimeterField.text = "\(value * 1000000)"
            milimiterField.text = "\(value * 1000000)"
        case centimeterField:
            meterField.text = "\(value * 0.0000001)"
            milimiterField.text = "\(value * 1000)"
        case milimiterField:
            meterField.text = "\(value * 0.0000000001)"
            centimeterField.text = "\(value * 0.001)"
        default:
            break
        }
    }
    
    override func clearText() {
        meterField.text = ""
        centimeterField.text = ""
        milimiterField.text = ""
    }
}
