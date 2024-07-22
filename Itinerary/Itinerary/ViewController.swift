//
//  ViewController.swift
//  Itinerary
//
//  Created by Alperen KARACA on 19.07.2024.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var myCities = [City]()
    var chosenCity : City?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
        
//        cities
        
        let istanbul = City(cityName: "Istanbul", itineraryText: "Sultanahmet Camii, Ayasofya, Topkapı Sarayı, Eminönü, Mısır Çarşısı, Kapalıçarşı, Galata Kulesi, İstiklal Caddesi, Taksim Meydanı, Boğaz Turu.", cityImage: UIImage(named: "Istanbul")!)
        
        let ankara = City(cityName: "Ankara", itineraryText: "Anıtkabir, Atatürk Orman Çiftliği, Kocatepe Camii, Hamamönü, Anadolu Medeniyetleri Müzesi, Ankara Kalesi, Rahmi M. Koç Müzesi, Kuğulu Park, Seğmenler Parkı, Tunalı Hilmi Caddesi.", cityImage: UIImage(named: "Ankara")!)
        
        let izmir = City(cityName: "Izmir", itineraryText: "Konak Meydanı, Kemeraltı Çarşısı, Tarihi Asansör, Kadifekale, İzmir Saat Kulesi, Alsancak Kordon, İzmir Arkeoloji Müzesi, İzmir Doğal Yaşam Parkı, Kültürpark, Efes Antik Kenti.", cityImage: UIImage(named: "Izmir")!)
        
        let adana = City(cityName: "Adana", itineraryText: "Taş Köprü, Sabancı Merkez Camii, Adana Arkeoloji Müzesi, Büyük Saat Kulesi, Adana Sinema Müzesi, Seyhan Baraj Gölü, Atatürk Parkı, Merkez Park, Kazancılar Çarşısı, Varda Köprüsü.", cityImage: UIImage(named: "Adana")!)
        
        let gaziantep = City(cityName: "Gaziantep", itineraryText: "Gaziantep Kalesi, Zeugma Mozaik Müzesi, Bakırcılar Çarşısı, Gaziantep Arkeoloji Müzesi, Emine Göğüş Mutfak Müzesi, Tahmis Kahvesi, Hasan Süzer Etnografya Müzesi, Dülükbaba Tabiat Parkı, Gaziantep Botanik Bahçesi, Rumkale.", cityImage: UIImage(named: "Gaziantep")!)
        
        myCities.append(istanbul)
        myCities.append(ankara)
        myCities.append(izmir)
        myCities.append(adana)
        myCities.append(gaziantep)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myCities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = myCities[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenCity = myCities[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! detailsVc
            destinationVC.selectedCity = chosenCity
        }
    }


}

