//
//  PhotosTableViewCell.swift
//  AlamofireTest
//
//  Created by Esraa Khaled   on 06/09/2022.
//

import UIKit

final class PhotosTableViewCell: UITableViewCell {

    @IBOutlet weak var photosImageView: UIImageView!
    @IBOutlet weak var photosTitleLabel: UILabel!
    var photo: Photo! {
        didSet{
            self.photosTitleLabel.text = self.photo.title
            self.photosImageView.setImage(imageUrl: self.photo.url)
        }
    }
}
