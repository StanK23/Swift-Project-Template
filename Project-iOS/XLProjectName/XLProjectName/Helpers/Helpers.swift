//
//  Helpers.swift
//  XLProjectName
//
//  Created by XLAuthorName ( XLAuthorWebsite )
//  Copyright (c) 2016 XLOrganizationName. All rights reserved.
//

import Foundation
import XLSwiftKit

internal func DEBUGLog(_ message: String, file: String = #file, line: Int = #line, function: String = #function) {
    #if DEBUG
        let fileURL = NSURL(fileURLWithPath: file)
        let fileName = fileURL.deletingPathExtension?.lastPathComponent ?? ""
        print("\(Date().dblog()) \(fileName)::\(function)[L:\(line)] \(message)")
    #endif
    // Nothing to do if not debugging
}

internal func DEBUGJson(_ value: AnyObject) {
    #if DEBUG
        print(JSONStringify(value))
    #endif
}
