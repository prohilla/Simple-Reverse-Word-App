//
//  KIF+SWIFT.swift
//  Simple Reverse Word App
//
//  Created by Prashant Rohilla on 3/12/17.
//  Copyright © 2017 prohilla. All rights reserved.
//

extension XCTestCase {
    func tester(file : String = #file, _ line : Int = #line) -> KIFUITestActor {
        return KIFUITestActor(inFile: file, atLine: line, delegate: self)
    }
}

extension KIFTestActor {
    func tester(file : String = #file, _ line : Int = #line) -> KIFUITestActor {
        return KIFUITestActor(inFile: file, atLine: line, delegate: self)
    }
}
