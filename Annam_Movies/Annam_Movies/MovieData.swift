//
//  MovieData.swift
//  Annam_Movies
//
//  Created by Annam,Ribkarani on 4/23/23.
//

import Foundation
import UIKit

struct Movie {
    let title: String
    let image: UIImage
    let releasedYear: String
    let movieRating: String
    let boxOffice: String
    let moviePlot: String
    let cast: [String]
}

struct Genre {
    let category: String
    let movies: [Movie]
}

let actionMovies: [Movie] = [
    Movie(title: "Mission: Impossible - Fallout", image: UIImage(named: "movie1")!, releasedYear: "2018", movieRating: "PG-13", boxOffice: "$791.1 million", moviePlot: "Ethan Hunt and his IMF team, along with some familiar allies, race against time after a mission gone wrong.", cast: ["Tom Cruise", "Henry Cavill", "Ving Rhames", "Simon Pegg"]),
    Movie(title: "John Wick: Chapter 3 - Parabellum", image: UIImage(named: "movie2")!, releasedYear: "2019", movieRating: "R", boxOffice: "$326.7 million", moviePlot: "John Wick is on the run after killing a member of the international assassin's guild, and with a $14 million price tag on his head, he is the target of hit men and women everywhere.", cast: ["Keanu Reeves", "Halle Berry", "Ian McShane", "Laurence Fishburne"]),
    Movie(title: "Avengers: Endgame", image: UIImage(named: "movie3")!, releasedYear: "2019", movieRating: "PG-13", boxOffice: "$2.798 billion", moviePlot: "After the devastating events of Avengers: Infinity War (2018), the universe is in ruins. With the help of remaining allies, the Avengers assemble once more in order to reverse Thanos' actions and restore balance to the universe.", cast: ["Robert Downey Jr.", "Chris Evans", "Mark Ruffalo", "Chris Hemsworth"])
]

let comedyMovies: [Movie] = [
    Movie(title: "The Hangover", image: UIImage(named: "movie4")!, releasedYear: "2009", movieRating: "R", boxOffice: "$467.5 million", moviePlot: "Three buddies wake up from a bachelor party in Las Vegas, with no memory of the previous night and the bachelor missing. They make their way around the city in order to find their friend before his wedding.", cast: ["Zach Galifianakis", "Bradley Cooper", "Ed Helms", "Justin Bartha"]),
    Movie(title: "Bridesmaids", image: UIImage(named: "movie5")!, releasedYear: "2011", movieRating: "R", boxOffice: "$288.4 million", moviePlot: "Competition between the maid of honor and a bridesmaid, over who is the bride's best friend, threatens to upend the life of an out-of-work pastry chef.", cast: ["Kristen Wiig", "Maya Rudolph", "Rose Byrne", "Melissa McCarthy"]),
    Movie(title: "The Grand Budapest Hotel", image: UIImage(named: "movie6")!, releasedYear: "2014", movieRating: "R", boxOffice: "$174.8 million", moviePlot: "The adventures of Gustave H, a legendary concierge at a famous hotel from the fictional Republic of Zubrowka between the first and second World Wars, and Zero Moustafa, the lobby boy who becomes his most trusted friend.", cast: ["Ralph Fiennes", "F. Murray Abraham", "Mathieu Amalric", "Adrien"]),
]
