// SPDX-License-Identifier: 0BSD

import AVFoundation
import Cocoa

let session = AVCaptureDevice.DiscoverySession.init(
    deviceTypes: [.builtInMicrophone, .externalUnknown], mediaType: nil, position: .unspecified)

let devices: [[String: Any]] = session.devices.map { device in
    [
        "deviceType": device.deviceType.rawValue,
        "isConnected": device.isConnected,
        "localizedName": device.localizedName,
        "manufacturer": device.manufacturer,
        "modelID": device.modelID,
        "uniqueID": device.uniqueID,
    ]
}

let devicesData = try JSONSerialization.data(
    withJSONObject: devices, options: [.prettyPrinted, .sortedKeys])

print(String(data: devicesData, encoding: .utf8)!)
