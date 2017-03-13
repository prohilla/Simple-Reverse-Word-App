//
//  AcceptanceUITest.swift
//  Simple Reverse Word App
//
//  Created by Prashant Rohilla on 3/12/17.
//  Copyright © 2017 prohilla. All rights reserved.
//

import XCTest

class AcceptanceUITest: KIFTestCase {

    override func setUp() {
        super.setUp()
        tester().tapView(withAccessibilityLabel: "clear button")
    }
    
    override func tearDown() {
        tester().tapView(withAccessibilityLabel: "clear button")
        super.tearDown()
    }
    
    // Tests word/string reversing functionality
    // Types "Coolest App" in the text box and presses Reverse Button
    // Then check for accessibility value
    func testReversedString() {
        let stringForTestingReverse="Coolest App"
        tester().enterText(stringForTestingReverse, intoViewWithAccessibilityLabel: "Enter text")
        tester().tapView(withAccessibilityLabel: "reverse button")
        let resultView = tester().waitForView(withAccessibilityLabel: "reversed", traits: UIAccessibilityTraitStaticText)
        let resultElementReverse = resultView?.accessibilityElement(withLabel: "reversed")
        XCTAssert(resultElementReverse?.accessibilityValue == "ppA tselooC")
    }
    
    // Tests word/string palindrome functionality
    // Types "kayak" in the text box and presses Reverse Button
    // Then check for accessibility value
    func testPalindromeTring() {
        let stringForTestingPalindrome="kayak"
        tester().enterText(stringForTestingPalindrome, intoViewWithAccessibilityLabel: "Enter text")
        tester().tapView(withAccessibilityLabel: "reverse button")
        let resultView = tester().waitForView(withAccessibilityLabel: "palindrome", traits: UIAccessibilityTraitStaticText)
        let resultElementPalindrome = resultView?.accessibilityElement(withLabel: "palindrome")
        XCTAssert(resultElementPalindrome?.accessibilityValue == "Is a Palindrome")
    }
    
}
