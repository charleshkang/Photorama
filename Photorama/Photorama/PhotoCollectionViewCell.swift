//
//  PhotoCollectionViewCell.swift
//  Photorama
//
//  Created by Charles Kang on 7/7/16.
//  Copyright © 2016 Charles Kang. All rights reserved.
//

import UIKit

class PhotoCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var spinner: UIActivityIndicatorView!
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
        updateWithImage(nil)
    }
    
    override func prepareForReuse()
    {
        super.prepareForReuse()
        updateWithImage(nil)
    }
    
    func updateWithImage(image: UIImage?)
    {
        if let imageToDisplay = image {
            spinner.stopAnimating()
            imageView.image = imageToDisplay
        } else {
            spinner.startAnimating()
            imageView.image = nil
        }
    }
}
