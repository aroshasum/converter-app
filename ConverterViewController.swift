//
//  ConverterViewController.swift
//  ConverterApp
//
//  Created by pamuditha liyanage on 4/10/19.
//  Copyright © 2019 pamuditha liyanage. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController {
    @IBOutlet weak var scrollView: UIScrollView!
    var converterType: Converter?
    
    lazy var converterView: BaseConverterView = {
        let view: BaseConverterView
        
        if let converter = converterType {
            switch converter {
            case .volume:
                view = VolumeView(userDataKey: "volume")
                self.title = "Volume Converter"
            case .distance:
                view = DistanceView(userDataKey: "distance")
                self.title = "Distance Converter"
            case .liquidVol:
                view = LiquidVolumeView(userDataKey: "liquid")
                self.title = "Liquid Volme Converter"
            case .speed:
                view = SpeedView(userDataKey: "speed")
                self.title = "Speed Converter"
            case .temperature:
                view = TemperatureView(userDataKey: "temperature")
                self.title = "Temperature Converter"
            case .weight:
                self.title = "Weight Converter"
                view = WeightView(userDataKey: "weight")
            }
        } else {
            self.title = "Volume Converter"
            view = VolumeView(userDataKey: "volume")
        }
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.addSubview(converterView)
        converterView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
        converterView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
        converterView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        converterView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
        converterView.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
    }
    
    @IBAction func onButtonAction(_ sender: UIButton) {
        converterView.updateKeyPress(inputCharacter: "\(sender.tag)")
    }
    
    @IBAction func onNegativePress() {
        converterView.negationUpdate()
    }
    
    @IBAction func onDecimalPress() {
        converterView.updateKeyPress(inputCharacter: ".")
    }
    
    @IBAction func onClear() {
        converterView.clearText()
    }
    
    @IBAction func onHistoryAction() {
        let controller = storyboard?.instantiateViewController(withIdentifier: "HistoryScreen") as! HistoryTableViewController
        controller.items = converterView.fetchData()
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    @IBAction func onSaveAction() {
        converterView.saveData()
    }
}
