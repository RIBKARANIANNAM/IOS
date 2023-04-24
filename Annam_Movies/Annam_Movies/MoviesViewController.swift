//
//  MoviesViewController.swift
//  Annam_Movies
//
//  Created by Annam,Ribkarani on 4/23/23.
//

import UIKit

class MoviesViewController: UIViewController ,UICollectionViewDataSource, UICollectionViewDelegate{
    
     func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = movieCollectionView.dequeueReusableCell(withReuseIdentifier: "movieCell", for: indexPath) as! MovieCollectionViewCell
        cell.assignMovie(with: movies[indexPath.row])
                         
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let movie = movies[indexPath.row]
        setMovieDetails(movie: movie)
    }
    
    // MARK: - Helper functions
    
    func setMovieDetails(movie: Movie) {
        movieNameLabel.text = movie.title
        movieRatingLabel.text = movie.movieRating
        movieBoxOfficeLabel.text = movie.boxOffice
        movieYearLabel.text = movie.releasedYear
        moviePlotLabel.text = movie.moviePlot
        movieCastLabel.text = movie.cast.joined(separator: ", ")
    }

    
    var genre:Genre?
    var selectedMovie: Movie?
    
    @IBOutlet weak var movieCollectionView: UICollectionView!
    
        @IBOutlet weak var movieNameLabel: UILabel!
    
    @IBOutlet weak var movieRatingLabel: UILabel!
   
    @IBOutlet weak var movieBoxOfficeLabel: UILabel!
    
    
        @IBOutlet weak var movieYearLabel: UILabel!
    @IBOutlet weak var moviePlotLabel: UILabel!
   
    
        @IBOutlet weak var movieCastLabel: UILabel!
        
        var movies: [Movie] = []
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            // Set up collection view
            movieCollectionView.delegate = self
            movieCollectionView.dataSource = self
            movieCollectionView.register(UINib(nibName: "MovieCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "movieCell")
            
            // Set default movie details
            if let firstMovie = movies.first {
                setMovieDetails(movie: firstMovie)
            }
        }
        
        // MARK: - Collection view data source
        
     
        
        // MARK: - Collection view delegate
        
        
    }


