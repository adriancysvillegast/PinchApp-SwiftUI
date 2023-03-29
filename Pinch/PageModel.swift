//
//  PageModel.swift
//  Pinch
//
//  Created by Adriancys Jesus Villegas Toro on 29/3/23.
//

import Foundation

struct Page: Identifiable {
    let id: Int
    let imageName: String
}

extension Page {
    
    var thumnailName: String {
        return "thumb-" + imageName
    }
}
