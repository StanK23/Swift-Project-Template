//
//  UIImageView.swift
//  XLProjectName
//
//  Created by XLAuthorName ( XLAuthorWebsite )
//  Copyright (c) 2016 XLOrganizationName. All rights reserved.
//

import Alamofire
import AlamofireImage
import Foundation

extension UIImageView {
    public func setImageWithURL(_ url: String, filter: ImageFilter? = nil, placeholder: UIImage? = nil, completion: ((DataResponse<UIImage>) -> Void)? = nil) {
        guard let url = URL(string: url) else {
            return
        }
        af_setImage(withURL: url, placeholderImage: placeholder, filter: filter, imageTransition: .crossDissolve(0.3), completion: { (response: DataResponse<UIImage>) in
            if let error = response.result.error {
                print(error.localizedDescription)
            }
            completion?(response)
        })
    }
}
