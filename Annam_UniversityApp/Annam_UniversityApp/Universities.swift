//
//  Universities.swift
//  Annam_UniversityApp
//
//  Created by Annam,Ribkarani on 4/15/23.
//

//
//  UniversityList.swift
//  Annam_UniversityApp
//
//  Created by Annam,Ribkarani on 4/15/23.
//

import Foundation
struct Universities {
    var domain : String
    var list_Array : [UniversityList]
}



struct UniversityList {
    var collegeName: String
    var collegeImage: String
    var collegeInfo: String
}

// Sample universities for each domain
let ComputerScience = Universities(domain: "Computer Science",list_Array: [
    UniversityList(collegeName: "Massachusetts Institute of Technology", collegeImage: "mit_logo", collegeInfo: "MIT is a private research university in Cambridge, Massachusetts."),
    UniversityList(collegeName: "Stanford University", collegeImage: "stanford_logo", collegeInfo: "Stanford University is a private research university in Stanford, California."),
    UniversityList(collegeName: "California Institute of Technology", collegeImage: "caltech_logo", collegeInfo: "Caltech is a private research university in Pasadena, California."),
    UniversityList(collegeName: "Carnegie Mellon University", collegeImage: "cmu_logo", collegeInfo: "Carnegie Mellon University is a private research university in Pittsburgh, Pennsylvania."),
    UniversityList(collegeName: "University of Illinois at Urbana-Champaign", collegeImage: "uiuc_logo", collegeInfo: "UIUC is a public research university in Illinois, United States.")])

let DataScience = Universities(domain: "Data Science", list_Array: [
    UniversityList(collegeName: "Massachusetts Institute of Technology", collegeImage: "mit_logo", collegeInfo: "MIT is a private research university in Cambridge, Massachusetts."),
    UniversityList(collegeName: "Stanford University", collegeImage: "stanford_logo", collegeInfo: "Stanford University is a private research university in Stanford, California."),
    UniversityList(collegeName: "University of California, Berkeley", collegeImage: "ucb_logo", collegeInfo: "UC Berkeley is a public research university in Berkeley, California."),
    UniversityList(collegeName: "Columbia University", collegeImage: "cmu_logo", collegeInfo: "Columbia University is a private Ivy League research university in New York City."),
    UniversityList(collegeName: "Harvard University", collegeImage: "uiuc_logo", collegeInfo: "Harvard University is a private Ivy League research university in Cambridge, Massachusetts.")
])

let IT = Universities(domain: "Information Technology", list_Array: [
    UniversityList(collegeName: "Massachusetts Institute of Technology", collegeImage: "mit_logo", collegeInfo: "MIT is a private research university in Cambridge, Massachusetts."),
    UniversityList(collegeName: "Stanford University", collegeImage: "stanford_logo", collegeInfo: "Stanford University is a private research university in Stanford, California."),
    UniversityList(collegeName: "University of California, Berkeley", collegeImage: "ucb_logo", collegeInfo: "UC Berkeley is a public research university in Berkeley, California."),
    UniversityList(collegeName: "Carnegie Mellon University", collegeImage: "cmu_logo", collegeInfo: "Carnegie Mellon University is a private research university in Pittsburgh, Pennsylvania."),
    UniversityList(collegeName: "Georgia Institute of Technology", collegeImage: "uiuc_logo", collegeInfo: "Georgia Tech is a public research university in Atlanta, Georgia.")
])

let Business = Universities(domain: "Business", list_Array: [
    UniversityList(collegeName: "Massachusetts Institute of Technology", collegeImage: "mit_logo", collegeInfo: "MIT is a private research university in Cambridge, Massachusetts."),
    UniversityList(collegeName: "Stanford University", collegeImage: "stanford_logo", collegeInfo: "Stanford University is a private research university in Stanford, California."),
    UniversityList(collegeName: "University of California, Berkeley", collegeImage: "ucb_logo", collegeInfo: "UC Berkeley is a public research university in Berkeley, California."),
    UniversityList(collegeName: "Columbia University", collegeImage: "cmu_logo", collegeInfo: "Columbia University is a private Ivy League research university in New York City."),
    UniversityList(collegeName: "Harvard University", collegeImage: "uiuc_logo", collegeInfo: "Harvard University is a private Ivy League research university in Cambridge, Massachusetts.")])

var domains = [ComputerScience, DataScience, IT, Business]


