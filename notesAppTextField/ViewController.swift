//
//  ViewController.swift
//  notesAppTextField
//
//  Created by JAMES DURCAN on 8/31/22.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var textFieldOutlet: UITextField!
    @IBOutlet weak var labelOutlet: UILabel!
    @IBOutlet weak var ageOutlet: UITextField!
    var theName: String!
    var theAge: String!
    override func viewDidLoad() {
        super.viewDidLoad()
        textFieldOutlet.delegate = self
        ageOutlet.delegate = self
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPress(_ sender: UIButton) {
        theName = textFieldOutlet.text
        theAge = ageOutlet.text
        labelOutlet.text = theName + " is " + theAge + " years old!"
        textFieldOutlet.resignFirstResponder()
        ageOutlet.resignFirstResponder()
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textFieldOutlet.resignFirstResponder()
        ageOutlet.resignFirstResponder()
        return true
    }
}

