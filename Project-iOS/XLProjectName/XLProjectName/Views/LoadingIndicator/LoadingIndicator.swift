//
//  LoadingIndicator.swift
//  XLProjectName
//
//  Created by XLAuthorName ( XLAuthorWebsite )
//  Copyright (c) 2016 XLOrganizationName. All rights reserved.
//

import Foundation
import NVActivityIndicatorView
import UIKit

internal class LoadingIndicator {

    static let size: CGSize = CGSize(width: 30, height: 30)
    static let type: NVActivityIndicatorType = NVActivityIndicatorType.ballPulse
    static let color: UIColor = UIColor.white
    static let minimumVisibleTime: TimeInterval = TimeInterval(0.2)
    static let displayTimeThreshold: TimeInterval = TimeInterval(0.1)

    static func show(
        message: String? = nil,
        minimumVisibleTime: TimeInterval = LoadingIndicator.minimumVisibleTime,
        displayTimeThreshold: TimeInterval = LoadingIndicator.displayTimeThreshold) {

        LoadingIndicatorManager.sharedInstance.show(message: message, minimumVisibleTime: minimumVisibleTime, displayTimeThreshold: displayTimeThreshold)
    }

    static func hide() {
        LoadingIndicatorManager.sharedInstance.hide()
    }

}
