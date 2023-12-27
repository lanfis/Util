//
//  File_Handler_Base_Test.swift
//
//
//  Created by 羅文霖 on 2023/12/27.
//

import XCTest
@testable import File_Handler_Base

final class UtilTests: XCTestCase {
    
    /*
    override func setUp() {
        super.setUp()
    }
    */
    /*
    override func tearDown() {
        super.tearDown()
    }
    */
    func testExample() throws {
        // XCTest Documentation
        // https://developer.apple.com/documentation/xctest

        // Defining Test Cases and Test Methods
        // https://developer.apple.com/documentation/xctest/defining_test_cases_and_test_methods
        var test_handler: File_Handler_Base
        test_handler = File_Handler_Base()
        var result = test_handler.list_directory(path: test_handler.configs["root_path"]!)
        print(result)
    }
    /*
    func testPerformanceExample() {
        self.measure {
            
        }
    }
    */
    /*
    override init() {
        super.init()
    }
    */
}
