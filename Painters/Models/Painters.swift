//
//  Painters.swift
//  Painters
//
//  Created by Alisher Zinullayev on 02.08.2023.
//

import Foundation

//class Painter {
//    let name: String
//    var info: String
//    let picture: String
//    let works: [String]
//    let worksPicture: [String: String]
//    let workDescription: [String: String]
//    var isOpened: Bool = false
//
//    init(name: String, info: String, picture: String, works: [String], worksPicture: [String : String], workDescription: [String : String], isOpened: Bool) {
//        self.name = name
//        self.info = info
//        self.picture = picture
//        self.works = works
//        self.worksPicture = worksPicture
//        self.workDescription = workDescription
//        self.isOpened = isOpened
//    }
//}

class Painter {
    let name: String
    var info: String
    let picture: String
    let works: [Paintings]
    
    init(name: String, info: String, picture: String, works: [Paintings]) {
        self.name = name
        self.info = info
        self.picture = picture
        self.works = works
    }
    
}

