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
    
    @IBAction func stepButtonPressed(_ sender: UIStepper) {
        stepLabel.text = String(sender.value)
    }
    
    
    @IBAction func alertPressed(_ sender: AnyObject) {
        let alert = UIAlertController(title: "Alert", message: "Message", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: nil))
        alert.addAction(UIAlertAction(title: "Continue", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func actionSheetButtonPressed(_ sender: AnyObject) {
        let alertController = UIAlertController(title: "Action Sheet", message: "What would you like to do?", preferredStyle: .actionSheet)
        
        let sendButton = UIAlertAction(title: "Send now", style: .default, handler: { (action) -> Void in
            print("Ok button tapped")
        })
        
        let  deleteButton = UIAlertAction(title: "Delete forever", style: .destructive, handler: { (action) -> Void in
            print("Delete button tapped")
        })
        
        let cancelButton = UIAlertAction(title: "Cancel", style: .cancel, handler: { (action) -> Void in
            print("Cancel button tapped")
        })
        
        
        alertController.addAction(sendButton)
        alertController.addAction(deleteButton)
        alertController.addAction(cancelButton)
        
        self.present(alertController, animated: true, completion: nil)
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
