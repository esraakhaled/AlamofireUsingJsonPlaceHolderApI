//
//  UIImageViewExtension.swift
//  AlamofireTest
//
//  Created by Esraa Khaled   on 06/09/2022.
//

import Foundation
import UIKit
import Kingfisher

extension UIImageView {
    func setImage(imageUrl: String){
        self.kf.setImage(with: URL(string: imageUrl))
        
    }
}
