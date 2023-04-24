//
//  MovieData.swift
//  Annam_Movies
//
//  Created by Annam,Ribkarani on 4/23/23.
//

import Foundation
import UIKit

struct Movie {
    var title: String
    var image: UIImage
    var releasedYear: String
    var movieRating: String
    var boxOffice: String
    var moviePlot: String
    var cast: [String]
}

struct Genre {
    var category: String
    var movies: [Movie]
}

let genres = [
    Genre(category: "Action", movies: [
        Movie(title: "The Dark Knight", image: UIImage(named: "dark_knight")!, releasedYear: "2008", movieRating: "9.0", boxOffice: "$1.005 billion", moviePlot: "When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.", cast: ["Christian Bale", "Heath Ledger", "Aaron Eckhart"]),
        Movie(title: "Inception", image: UIImage(named: "inception")!, releasedYear: "2010", movieRating: "8.8", boxOffice: "$829.9 million", moviePlot: "A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O.", cast: ["Leonardo DiCaprio", "Joseph Gordon-Levitt", "Ellen Page"]),
        Movie(title: "The Matrix", image: UIImage(named: "matrix")!, releasedYear: "1999", movieRating: "8.7", boxOffice: "$463.5 million", moviePlot: "A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.", cast: ["Keanu Reeves", "Laurence Fishburne", "Carrie-Anne Moss"]),
        Movie(title: "Die Hard", image: UIImage(named: "die_hard")!, releasedYear: "1988", movieRating: "8.2", boxOffice: "$140.8 million", moviePlot: "An NYPD officer tries to save his wife and several others taken hostage by German terrorists during a Christmas party at the Nakatomi Plaza in Los Angeles.", cast: ["Bruce Willis", "Alan Rickman", "Bonnie Bedelia"]),
        Movie(title: "Kill Bill: Vol. 1", image: UIImage(named: "kill_bill_vol_1")!, releasedYear: "2003", movieRating: "8.1", boxOffice: "$180.9 million", moviePlot: "After awakening from a four-year coma, a former assassin wreaks vengeance on the team of assassins who betrayed her.", cast: ["Uma Thurman", "Lucy Liu", "Vivica A. Fox"])
    ]),
    Genre(category: "Comedy", movies: [
        Movie(title: "The Hangover", image: UIImage(named: "hangover")!, releasedYear: "2009", movieRating: "7.7", boxOffice: "$467.5 million", moviePlot: "Three buddies wake up from a bachelor party in Las Vegas, with no memory of the previous night and the bachelor missing. They make their way around the city in order to find their friend before his wedding.", cast: ["Zach Galifianakis", "Bradley Cooper", "Justin Bartha"]),
        Movie(title: "Bridesmaids", image: UIImage(named: "bridesmaids")!, releasedYear: "2011", movieRating: "6.8", boxOffice: "$288.4 million", moviePlot: "Competition between the maid of honor and a bridesmaid, over who is the bride's best friend.",cast:["Zach Galifianakis", "Bradley Cooper", "Justin Bartha"])
])
]
