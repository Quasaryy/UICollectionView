//
//  DetailsViewController.swift
//  UICollectionView
//
//  Created by Yury on 27.01.23.
//

import UIKit

class DetailsViewController: UIViewController {
    
    // MARK: - Properties
    // Getting image and track name from custom cell of CollectionViewController
    var image: UIImage!
    var trackName: String!

    // MARK: - IB Outlets
    @IBOutlet var trackLabel: UILabel!
    @IBOutlet var imageView: UIImageView!
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image = image
        trackLabel.numberOfLines = 0
        trackLabel.textAlignment = .center
        trackLabel.text = trackName
    }

}
