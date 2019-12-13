//
//  ViewController.swift
//  Calculator
//
//  Created by Amir Mostafavi on 12/11/19.
//  Copyright © 2019 amir. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    
    // MARK: - Variables/IBOutlets
    
    // MARK: Static constants
    static let OPEN_CAGE_DATA_BASE_URL = "https://api.opencagedata.com/geocode/v1/json"
    static let OPEN_CAGE_DATA_API_KEY = "22f8a3a871864fca9c7f1f75655907ba"
    
    // MARK: IBOutlets
    @IBOutlet weak var countryLabel: UILabel!

    // MARK: Singletons
    let locationManager: CLLocationManager = CLLocationManager()
    
    // MARK: Runtime variables
    var coordinates: (lat: Double, long: Double)! {
        didSet {
            print("Lat: \(coordinates.lat), Long: \(coordinates.long)")
            locationManager.stopUpdatingLocation()
            updateCountry()
        }
    }
    
    var country: String! {
        didSet {
            DispatchQueue.main.async {  // force the UI update to happen in the main thread
                self.countryLabel.text = self.country
            }
        }
    }
    
    // MARK: - Methods
    
    // MARK: Application lifetime methods
    override func viewDidLoad() {
        super.viewDidLoad()
        overrideUserInterfaceStyle = .dark
        // Do any additional setup after loading the view.
        
        // Set up location manager and ask for permission
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyKilometer
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
    
    // MARK: Delegate methods
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let latestLocation = locations[locations.count  - 1] // get the latest location
        coordinates = (latestLocation.coordinate.latitude, latestLocation.coordinate.longitude)
    }
    
    // MARK: Helper methods
    func updateCountry() {
        let url = URL(string: "\(ViewController.OPEN_CAGE_DATA_BASE_URL)?q=\(coordinates!.lat),\(coordinates!.long)&pretty=1&key=22f8a3a871864fca9c7f1f75655907ba")
        
        let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
            guard let data = data else {
                print("URLSession dataTask error:", error ?? "nil")
                return
            }
            
            do {
                let responseModel = try JSONDecoder().decode(Json4Swift_Base.self, from: data)
                print(responseModel.results![0].components!)
                
                self.country = responseModel.results![0].components!.country!
            } catch {
                print("JSONSerialization error:", error)
            }
        }
        task.resume()
    }

}

