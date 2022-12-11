//
//  ViewController.swift
//  Decision
//
//  Created by Влад on 12/11/22.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var TextView: UITextView!
    @IBOutlet weak var TextField01: UITextField!
    @IBOutlet weak var textView02: UITextView!
    
    let emptyText : String = ",  "
    var array : [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.TextField01.delegate = self
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return TextField01.resignFirstResponder()
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    @IBAction func addTextButton(_ sender: UIButton) {
        var arrayElement = TextField01.text!
        if TextField01 != nil {
            array.append(arrayElement)
        }
        
        arrayElement += emptyText
        TextView.text += arrayElement
        
        
        TextField01.text = nil
    }
    
    @IBAction func deleteTextButton(_ sender: UIButton) {
        
        TextView.text = nil
        array.removeAll()
        textView02.text = nil
    }
    
    
    @IBAction func randomise(_ sender: UIButton) {
        let randomItemInArray = array.randomElement()
        textView02.text = randomItemInArray
    }
    
    
    
}

