//
//  AppDelegate+XLProjectName.swift
//  XLProjectName
//
//  Created by XLAuthorName ( XLAuthorWebsite )
//  Copyright © 2016 'XLOrganizationName'. All rights reserved.
//

import Eureka
import Foundation

extension AppDelegate {

    /**
     Set up your Eureka default row customization here
     */
    func stylizeEurekaRows() {

        let genericHorizontalMargin = CGFloat(50)
        BaseRow.estimatedRowHeight = 58

        EmailRow.defaultRowInitializer = {
            $0.placeholder = NSLocalizedString("E-mail Address", comment: "")
            $0.placeholderColor = .gray
        }

        EmailRow.defaultCellSetup = { cell, _ in
            cell.layoutMargins = UIEdgeInsets.zero
            cell.contentView.layoutMargins.left = genericHorizontalMargin
            cell.height = { 58 }
        }
    }
}
