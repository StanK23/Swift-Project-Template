//
//  Constants.swift
//  XLProjectName
//
//  Created by XLAuthorName ( XLAuthorWebsite )
//  Copyright (c) 2016 XLOrganizationName. All rights reserved.
//

import Foundation
import XLSwiftKit

internal struct Constants {

    struct Keychain {
        static let serviceIdentifier: String = UIApplication.bundleIdentifier
        static let sessionToken: String = "session_token"
        static let deviceToken: String = "device_token"
    }
    
    struct Formatters {
        
        static let debugConsoleDateFormatter: DateFormatter = {
            let formatter = DateFormatter()
            formatter.dateFormat = "yyyy-MM-dd HH:mm:ss.SSS"
            formatter.timeZone = TimeZone(identifier: "UTC")
            return formatter
        }()
        
    }
    
}
