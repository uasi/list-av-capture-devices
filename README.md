# list-av-capture-devices

Lists all audio and video [capture devices](https://developer.apple.com/documentation/avfoundation/avcapturedevice) connected to Mac, outputting device information as JSON.

## Usage

Build and run from source:

```
swift run
```

Or download a prebuilt binary from the [releases page](https://github.com/uasi/list-av-capture-devices/releases) and run it directly:

```
./list-av-capture-devices
```

The program takes no arguments.

## Example output

```json
[
  {
    "deviceType" : "AVCaptureDeviceTypeBuiltInMicrophone",
    "isConnected" : true,
    "localizedName" : "MacBook Pro Microphone",
    "manufacturer" : "Apple Inc.",
    "modelID" : "Digital Mic",
    "uniqueID" : "BuiltInMicrophoneDevice"
  }
]
```
