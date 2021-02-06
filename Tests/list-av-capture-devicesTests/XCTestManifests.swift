import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(list_av_capture_devicesTests.allTests),
    ]
}
#endif
