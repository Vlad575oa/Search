//
//  DataManager.swift
//  ContriesApp
//
//  Created by user on 15.02.2023.
//

import Foundation

class Countries {
    
let shared = Countries()
    
let countriesArray = [
   Country(title: "Usa (+1)", imageName: "Usa", isActive: false),
   Country(title: "Canada (+1)", imageName: "Canada", isActive: false),
   Country(title: "Argentina (+54)", imageName: "Argentina", isActive: false),
   Country(title: "Austria (+43)", imageName: "Austria", isActive: false),
   Country(title: "Australia (+61)", imageName: "Australia", isActive: false),
   Country(title: "Belgium (+32)", imageName: "Belgium", isActive: false),
   Country(title: "Brazil (+55)", imageName: "Brazil", isActive: false),
   Country(title: "Switzerland (+41)", imageName: "Switzerland", isActive: false),
   Country(title: "Germany (+49)", imageName: "Germany", isActive: false),
   Country(title: "Denmark (+45)", imageName: "Denmark", isActive: false),
   Country(title: "Japan (+45)", imageName: "Japan", isActive: false),
   Country(title: "France (+33)", imageName: "France", isActive: false),
   Country(title: "Ireland (+353)", imageName: "Ireland", isActive: false),
   Country(title: "Greece (+30)", imageName: "Greece", isActive: false),
   Country(title: "Hong Kong (+852)", imageName: "Hong Kong", isActive: false),
   Country(title: "Israel (+972)", imageName: "Israel", isActive: false),
   Country(title: "India (+91)", imageName: "India", isActive: false),
   Country(title: "Italy (+39)", imageName: "Italy", isActive: false),
   Country(title: "Jersey (+44)", imageName: "Jersey", isActive: false),
   Country(title: "Japan (+81)", imageName: "Japan", isActive: false),
   Country(title: "Luxembourg (+352)", imageName: "Luxembourg", isActive: false),
   Country(title: "Norway (+47)", imageName: "Norway", isActive: false)
]
    
    private init() {}

}
