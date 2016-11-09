//
//  ViewController.swift
//  randomGenerator
//
//  Created by Tulga Narmandakh on 11/7/16.
//  Copyright © 2016 Tulga Narmandakh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var lowerBoundField: UITextField!
    @IBOutlet var upperBoundField: UITextField!
    @IBOutlet var generateButton: UIButton!
    @IBOutlet var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        lowerBoundField.text = "0"
        upperBoundField.text = "100"
        resultLabel.text = "Result:  \(generateNumber(with: UInt32(0), and: UInt32(100)))"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func buttonTouched() {
        self.hideKeyBoard()
        
        let lowerBound = UInt32(lowerBoundField.text!)
        let upperBound = UInt32(upperBoundField.text!)
        
        let result = self.generateNumber(with: lowerBound!, and: upperBound!)
        
        resultLabel.text = "Result:  \(result)"
    }
    
    func generateNumber(with lowerBound:UInt32, and upperBound:UInt32) -> Int {
        let result = Int(arc4random_uniform(upperBound - lowerBound) + lowerBound)
        
        return result
    }
    
    /**
     * Called when the user click on the view (outside the UITextField).
     */
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.hideKeyBoard()
    }
    
    func hideKeyBoard() {
        self.lowerBoundField.endEditing(true)
        self.upperBoundField.endEditing(true)
    }
}

