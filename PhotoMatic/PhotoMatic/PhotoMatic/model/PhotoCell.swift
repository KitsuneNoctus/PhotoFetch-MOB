//
//  PhotoCell.swift
//  L08_sandbox1
//
//  Created by Thomas Vandegriff on 2/13/19.
//  Copyright © 2019 Make School. All rights reserved.
//

import UIKit

class PhotoCell: UICollectionViewCell {
    
    @IBOutlet var photoImageView: UIImageView!
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        updateCell(with: nil)
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        updateCell(with: nil)
    }
    
    func updateCell(with image: UIImage?) {
        spinner.stopAnimating()
        spinner.isHidden = true
        if let imageToDisplay = image {
            photoImageView.image = imageToDisplay
        } else {
            photoImageView.image = nil
        }
    }
}
