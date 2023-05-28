//
//  StrangeCalculatorTests.swift
//  StrangeCalculatorTests
//
//  Created by 조호준 on 2023/05/28.
//

import XCTest
@testable import UnitTestSample

final class StrangeCalculatorTests: XCTestCase {
    var sut: StrangeCalculator! // 1

    override func setUpWithError() throws { // 2
        try super.setUpWithError()
        sut = StrangeCalculator()
    }

    override func tearDownWithError() throws { // 3
        try super.tearDownWithError()
        sut = nil
    }

    func test_addNumbers호출시_3_7_23을전달했을때_33을반환하는지() {
        // given
        let input = [3, 7, 23]
        
        // when
        let result = sut.addNumbers(of: input)
        
        // then
        XCTAssertEqual(result, 33)
    }
}
