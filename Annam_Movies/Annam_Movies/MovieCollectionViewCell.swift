//
//  MovieCollectionViewCell.swift
//  Annam_Movies
//
//  Created by Annam,Ribkarani on 4/23/23.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var imageViewOutlet: UIImageView!
    func assignMovie(with movie:Movie){
        imageViewOutlet.image = movie.image
    }
}
