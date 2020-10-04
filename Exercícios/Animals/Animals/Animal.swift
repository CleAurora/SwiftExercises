//
//  Animal.swift
//  Animals
//
//  Created by Cleís Aurora Pereira on 01/10/20.
//

import Foundation

class Animal{
    var name: String
    var breed: String
    var weigth: String
    var specie: String
    var image: String

    init(name: String, breed: String, weigth: String, specie: String, image:String) {
        self.breed = breed
        self.image = image
        self.name = name
        self.specie = specie
        self.weigth = weigth
    }
}
