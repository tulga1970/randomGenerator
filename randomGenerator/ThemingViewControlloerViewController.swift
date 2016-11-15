//
//  ThemingViewControlloerViewController.swift
//  randomGenerator
//
//  Created by Tulga Narmandakh on 11/14/16.
//  Copyright © 2016 Tulga Narmandakh. All rights reserved.
//

import UIKit

class ThemingViewControlloerViewController: UIViewController {

    var isBlackMode: Bool = true
    
    @IBOutlet weak var messageBtn: UIButton!
    @IBOutlet weak var switchBtn: UISwitch!
    @IBOutlet weak var actionBtn: UIButton!
    @IBOutlet weak var stepLabel: UILabel!
    @IBOutlet weak var stepButton: UIStepper!
    
    @IBOutlet weak var themeNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        isBlackMode = switchBtn.isOn
        rerender()
        stepLabel.text = String(stepButton.stepValue)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func switchPressed(_ sender: AnyObject) {
        isBlackMode = !isBlackMode
        rerender()
    }
    
    func rerender() {
        if isBlackMode {
            self.view.backgroundColor = UIColor.black
            messageBtn.setTitleColor(UIColor.white, for: UIControlState.normal)
            actionBtn.setTitleColor(UIColor.white, for: UIControlState.normal)
            themeNameLabel.text = "Dark Theme"
        }else {
            self.view.backgroundColor = UIColor.white
            messageBtn.setTitleColor(UIColor.blue, for: UIControlState.normal)
            actionBtn.setTitleColor(UIColor.blue, for: UIControlState.normal)
            themeNameLabel.text = "White Theme"
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
