import XCTest
import class Foundation.Bundle

final class list_av_capture_devicesTests: XCTestCase {
    func testProgramRuns() throws {
        let executableURL = productsDirectory.appendingPathComponent("list-av-capture-devices")

        let process = Process()
        process.executableURL = executableURL

        let pipe = Pipe()
        process.standardOutput = pipe

        try process.run()
        process.waitUntilExit()

        let data = pipe.fileHandleForReading.readDataToEndOfFile()
        let output = String(data: data, encoding: .utf8)

        // Verify the output is valid JSON and contains a devices array.
        XCTAssertNotNil(output)
        let outputData = output?.data(using: .utf8)
        XCTAssertNotNil(outputData)
        let json = try JSONSerialization.jsonObject(with: outputData!, options: [])
        XCTAssertTrue(json is [Any])
    }

    private var productsDirectory: URL {
        for bundle in Bundle.allBundles where bundle.bundlePath.hasSuffix(".xctest") {
            return bundle.bundleURL.deletingLastPathComponent()
        }
        fatalError("couldn't find the products directory")
    }
}
