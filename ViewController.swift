//
//  ViewController.swift
//  discountCalculator
//
//  Created by Joseph Lee on 7/5/16.
//  Copyright © 2016 Joseph Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var input1: UITextField!
 
    @IBOutlet weak var input2: UITextField!
    @IBOutlet weak var output: UILabel!
    @IBOutlet weak var extraDis: UITextField!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Looks for single or multiple taps.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    //Calls this function when the tap is recognized.
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calculate(sender: UIButton) {

        
        let x = Float(input1.text!)
        let y = Float(input2.text!)
        let z = Float((100 - y!)/100)
        
        var a: Float = 1.0
        let q = Float(extraDis.text!)
        if q == nil {
            output.text = String(x! * z)
        }else{
            a = Float((100-q!)/100)
        
            output.text = String(x! * z * a)
        }
        
       // output.text = String(x! * z)
    }
    

}

