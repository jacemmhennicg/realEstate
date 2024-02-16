
import XCTest
@testable import RealEstate

class TestClass: XCTestCase {
    
    override class func setUp() {
        super.setUp()
        print("setUpAll")
    }
    
    override func setUp() {
        super.setUp()
        print("setUp")
    }
    
    override func tearDown() {
        print("tearDown")
        super.tearDown()
    }
    
    override class func tearDown() {
        print("tearDownAll")
        super.tearDown()
    }
    
    func testSum() {
        XCTAssertEqual(sum(a: 5, b: 6), 5 + 6)
    }
    
    func testSubstract() {
        XCTAssertEqual(substract(a: 10, b: 3), 10 - 3)
    }
    
    func sum(a: Int, b: Int) -> Int {
        return a + b
    }
    
    func substract(a: Int, b: Int) -> Int {
        return a - b
    }
}


