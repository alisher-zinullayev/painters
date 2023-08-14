//
//  Paintings.swift
//  Painters
//
//  Created by Alisher Zinullayev on 14.08.2023.
//

import Foundation

class Paintings {
    
    let workName: String
    let workPicture: String
    let workDescription: String
    var isOpened: Bool = false
    
    init(workName: String, workPicture: String, workDescription: String, isOpened: Bool) {
        self.workName = workName
        self.workPicture = workPicture
        self.workDescription = workDescription
        self.isOpened = isOpened
    }
    
}
