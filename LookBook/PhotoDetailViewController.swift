//
//  PhotoDetailViewController.swift
//  LookBook
//
//  Created by Apple on 8/1/19.
//  Copyright © 2019 KWK. All rights reserved.
//

import UIKit

class PhotoDetailViewController: UIViewController {

    @IBOutlet weak var photoDetailTwo : UIImageView!
    
    var photo : Photos? = nil
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let realPhoto = photo {
            title = realPhoto.caption
            if let cellPhotoImageData = realPhoto.imageData {
                if let cellPhotoImage = UIImage(data: cellPhotoImageData) {
                    photoDetailTwo.image = cellPhotoImage
                }
            }
        }

        
    }
    

   

}
