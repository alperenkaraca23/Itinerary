//
//  detailsVc.swift
//  Itinerary
//
//  Created by Alperen KARACA on 19.07.2024.
//

import UIKit

class detailsVc: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var cityLabel: UILabel!
    
    @IBOutlet weak var itineraryLabel: UILabel!
    
    var selectedCity : City?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cityLabel.text = selectedCity?.name
        itineraryLabel.text = selectedCity?.itinerary
        imageView.image = selectedCity?.image

        // Do any additional setup after loading the view.
    }
    

     

}
