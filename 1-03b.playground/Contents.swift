// Created on: September-2018
// Created by: Ethan Bellem
// Created for: ICS3U
// This program does basic math, using UIKit
// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let instructionsLabel : UILabel = UILabel()
    let lengthLabel : UILabel = UILabel()
    let widthLabel : UILabel = UILabel()
    let areaLabel : UILabel = UILabel()
    let perimeterLabel : UILabel = UILabel()
    let lengthTextField : UITextField = UITextField()
    let widthTextField : UITextField = UITextField()
    let calculateButton : UIButton = UIButton()
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.274509817361832, green: 0.486274510622025, blue: 0.141176477074623, alpha: 1.0)
        self.view = view
        
        instructionsLabel.text = "Enter length and width to calculate area and perimeter "
        view.addSubview(instructionsLabel)
        instructionsLabel.translatesAutoresizingMaskIntoConstraints = false
        instructionsLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        instructionsLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        lengthLabel.text = "Enter Length: "
        view.addSubview(lengthLabel)
        lengthLabel.translatesAutoresizingMaskIntoConstraints = false
        lengthLabel.topAnchor.constraint(equalTo: instructionsLabel.bottomAnchor, constant: 20).isActive = true
        lengthLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        widthLabel.text = "Enter Width: "
        view.addSubview(widthLabel)
        widthLabel.translatesAutoresizingMaskIntoConstraints = false
        widthLabel.topAnchor.constraint(equalTo: lengthLabel.bottomAnchor, constant: 20).isActive = true
        widthLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        lengthTextField.borderStyle = UITextBorderStyle.roundedRect
        lengthTextField.placeholder = "    cm"
        view.addSubview(lengthTextField)
        lengthTextField.translatesAutoresizingMaskIntoConstraints = false
        lengthTextField.topAnchor.constraint(equalTo: instructionsLabel.bottomAnchor, constant: 20).isActive = true
        lengthTextField.leadingAnchor.constraint(equalTo: lengthLabel.trailingAnchor, constant: 10).isActive = true
        
        widthTextField.borderStyle = UITextBorderStyle.roundedRect
        widthTextField.placeholder = "    cm"
        view.addSubview(widthTextField)
        widthTextField.translatesAutoresizingMaskIntoConstraints = false
        widthTextField.topAnchor.constraint(equalTo: lengthTextField.bottomAnchor, constant: 20).isActive = true
        widthTextField.leadingAnchor.constraint(equalTo: widthLabel.trailingAnchor, constant: 15).isActive = true
        
        calculateButton.setTitle("Calcuate", for: UIControlState.normal)
        calculateButton.setTitleColor(.blue, for: .normal)
        calculateButton.addTarget(self, action: #selector(calculateAreaAndPerimeter), for: .touchUpInside)
        view.addSubview(calculateButton)
        calculateButton.translatesAutoresizingMaskIntoConstraints = false
        calculateButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        calculateButton.topAnchor.constraint(equalTo: widthLabel.bottomAnchor, constant: 25).isActive = true
        
        //areaLabel.text = "test"
        view.addSubview(areaLabel)
        areaLabel.translatesAutoresizingMaskIntoConstraints = false
        areaLabel.topAnchor.constraint(equalTo: calculateButton.bottomAnchor, constant: 20).isActive = true
        areaLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        //perimeterLabel.text = "test"
        view.addSubview(perimeterLabel)
        perimeterLabel.translatesAutoresizingMaskIntoConstraints = false
        perimeterLabel.topAnchor.constraint(equalTo: areaLabel.bottomAnchor, constant: 20).isActive = true
        perimeterLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
    }
    
    
    @objc func calculateAreaAndPerimeter() {
        // calculate and show area and perimeter 
        let length : Int = Int(lengthTextField.text!)!
        let width : Int = Int(widthTextField.text!)!
        
        let area = length * width 
        let perimeter = 2 * (length + width)
        
        areaLabel.text = "The area is \(area) cm^2"
        perimeterLabel.text = "The perimeter is \(perimeter) cm"
        //calculateButton.alpha = 0
        
    }
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()
