//
//  UIDevice.swift
//  XLProjectName
//
//  Created by XLAuthorName ( XLAuthorWebsite )
//  Copyright (c) 2016 XLOrganizationName. All rights reserved.
//

import Foundation
import UIKit
import KeychainAccess

extension UIDevice {

    fileprivate static let keychainKey = "device_id"
    fileprivate static let keychain = Keychain(service: UIApplication.bundleIdentifier)

    static var uniqueId: String {
        do {
            if try keychain.contains(keychainKey) {
                guard let id = try keychain.get(keychainKey) else {
                    return ""
                }
                return id
            }
            guard let newDeviceId = UIDevice.current.identifierForVendor?.uuidString else {
                return ""
            }
            try keychain.set(newDeviceId, key: keychainKey)
            return newDeviceId
        } catch {
            return ""
        }
    }
}
