//
//  JSONFileLoaderTests.swift
//  Swifternalization
//
//  Created by Tomasz Szulc on 21/07/15.
//  Copyright (c) 2015 Tomasz Szulc. All rights reserved.
//

import UIKit
import XCTest

class JSONFileLoaderTests: XCTestCase {
    
    // Expressions
    func loadExpressions(cc: CountryCode) -> Dictionary<String, String> {
        return JSONFileLoader.loadExpressions(cc, bundle: NSBundle.testBundle())
    }
    
    func testShouldLoadBaseExpressions() {
        XCTAssertFalse(loadExpressions("base").isEmpty, "")
    }
    
    func testShouldLoadPLExpressions() {
        XCTAssertFalse(loadExpressions("pl").isEmpty, "")
    }
    
    func testShouldNotLoadDEExpressions() {
        XCTAssertTrue(loadExpressions("de").isEmpty, "")
    }
    
    // Translations
    func loadTranslations(cc: CountryCode) -> JSONDictionary {
        return JSONFileLoader.loadTranslations(cc, bundle: NSBundle.testBundle())
    }

    func testShouldLoadBaseTranslations() {
        XCTAssertFalse(loadTranslations("base").isEmpty, "")
    }
    
    func testShouldLoadPLTranslations() {
        XCTAssertFalse(loadTranslations("pl").isEmpty, "")
    }
    
    func testShouldNotLoadDETranslations() {
        XCTAssertTrue(loadTranslations("de").isEmpty, "")
    }
}
