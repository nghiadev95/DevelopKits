//
//  LoggingKit.swift
//  iOSKits
//
//  Created by Nghia Nguyen on 12/16/19.
//  Copyright © 2019 Nghia Nguyen. All rights reserved.
//

import Foundation

public final class LoggingKit {
    public static var shared: LoggingKit = LoggingKit()
    
    private let defaultFilename = "LoggingKit-output.txt"
    private init() {}
    
    public func printConsole(_ value: Any) {
        print(value)
    }
    
    public func writeToFile(filename: String?, content: String) {
        let contentToWrite = content + "\n"
        let destinationFilename = filename == nil ? defaultFilename : filename!
        let fm = FileManager.default
        let log = fm.urls(for: .documentDirectory, in: .userDomainMask)[0].appendingPathComponent(destinationFilename)
        if let handle = try? FileHandle(forWritingTo: log) {
            handle.seekToEndOfFile()
            handle.write(contentToWrite.data(using: .utf8)!)
            handle.closeFile()
        } else {
            try? contentToWrite.data(using: .utf8)?.write(to: log)
        }
    }
}
