//
//  CollectionViewController.swift
//  UICollectionView
//
//  Created by Yury on 27.01.23.
//

import UIKit

class CollectionViewController: UICollectionViewController {
    
    // MARK: - Properties
    // Getting data from Track struct
    private let tracks = Track.getTracks()

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // Casting let as DetailsViewController
        guard let detailsVC = segue.destination as? DetailsViewController else { return }
        // Casting let as our custom cell
        guard let cell = sender as? CollectionViewCell else { return }
        
        // Sending image and track name to the DetailsViewController
        detailsVC.image = cell.imageView.image
        detailsVC.trackName = cell.trackName
    }

    // MARK: UICollectionViewDataSource
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return tracks.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        // Creaiting and casting custom cell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
        
        // Getting image and track name for custom cell
        cell.imageView.image = UIImage(named: "\(tracks[indexPath.item].trackName)")
        cell.trackName = tracks[indexPath.item].trackName
    
        return cell
    }

}
