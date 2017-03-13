//
//  ViewController.swift
//  Simple Reverse Word App
//
//  Created by Prashant Rohilla on 3/12/17.
//  Copyright © 2017 prohilla. All rights reserved.
//

import UIKit

var wordToReverse = ""

class ViewController: UIViewController {

    @IBOutlet weak var txtEnterText: UITextField!
    
    @IBOutlet weak var lblLabelReversedWord: UILabel!
    
    @IBOutlet weak var lblLabelPalindromeCheck: UILabel!
    
    @IBAction func btnReverseACTION(_ sender: UIButton) {
        wordToReverse = txtEnterText.text!
        reverseTheWord(textToReverse: wordToReverse)
        isPalindrome(textToCheck: wordToReverse)
    }
    
    @IBAction func btnClearACTION(_ sender: UIButton) {
        
        txtEnterText.text = nil
        lblLabelReversedWord.text = nil
        lblLabelPalindromeCheck.text = nil
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func reverseTheWord(textToReverse: String){
        let tmpReversedWord = String(textToReverse.characters.reversed())
        lblLabelReversedWord.text = tmpReversedWord
        lblLabelReversedWord.accessibilityValue = tmpReversedWord
    }
    
    func isPalindrome(textToCheck: String){
        var revstring = ""
        for character in textToCheck.characters {
            revstring = String(character) + revstring
        }
        if (revstring.lowercased() == textToCheck.lowercased()) {
            lblLabelPalindromeCheck.text = "Is a Palindrome"
            lblLabelPalindromeCheck.accessibilityValue = "Is a Palindrome"
        }
        else {
            lblLabelPalindromeCheck.text = "Not a Palindrome"
            lblLabelPalindromeCheck.accessibilityValue = "Not a Palindrome"
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        txtEnterText.resignFirstResponder()
    }


}

