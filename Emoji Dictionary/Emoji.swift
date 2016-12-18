//
//  Emoji.swift
//  Emoji Dictionary
//
//  Created by Remus Victuelles on 18/12/16.
//  Copyright © 2016 Noypi Dev. All rights reserved.
//

class Emoji {
    var _symbol = ""
    var _name = ""
    var _description = ""
    var _categoryEnum : category = category.unknown
    
    enum category : String {
        case animals = "Animals"
        case buildings = "Buildings"
        case emoticons = "Emoticons"
        case unknown = "Unknown"
    }
    
    init(symbol : String, name : String, description : String, categ : category) {
        _symbol = symbol
        _name = name
        _description = description
        _categoryEnum = categ
    }
    
    init() {
        
    }
}
