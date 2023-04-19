//
//  Universities.swift
//  Annam_UniversityApp
//
//  Created by Annam,Ribkarani on 4/15/23.
//

import Foundation

struct Universities {
    var domain: String
    var list_Array: [UniversityList]
    
    init(domain: String, list_Array: [UniversityList]) {
        self.domain = domain
        self.list_Array = list_Array
    }
}
