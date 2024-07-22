//
//  City.swift
//  Itinerary
//
//  Created by Alperen KARACA on 19.07.2024.
//

import Foundation
import UIKit

class City {
    
    var name : String
    var itinerary : String
    var image : UIImage
    
    init(cityName : String, itineraryText : String, cityImage : UIImage) {
        
        name = cityName
        itinerary = itineraryText
        image = cityImage
        
    }
}
