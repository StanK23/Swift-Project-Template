//
//  XLTableViewController.swift
//  XLProjectName
//
//  Created by XLAuthorName ( XLAuthorWebsite )
//  Copyright © 2016 XLOrganizationName. All rights reserved.
//

import Foundation
import RxCocoa
import RxSwift
import UIKit

internal class XLTableViewController: UIViewController {
    
    @IBOutlet private weak var tableView: UITableView!
    @IBOutlet private weak var activityIndicatorView: UIActivityIndicatorView!
    @IBOutlet private weak var searchBar: UISearchBar!
    
    var disposeBag: DisposeBag = DisposeBag()
}
