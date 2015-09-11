//
//  OrderViewController.swift
//  heyhey
//
//  Created by Douglas Binder on 9/5/15.
//  Copyright (c) 2015 Douglas Binder. All rights reserved.
//

import Foundation
import UIKit
import CoreLocation

class OrderViewController: UIViewController, CLLocationManagerDelegate {
    
    let locationManager = CLLocationManager()
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
            
        self.locationManager.delegate = self
        self.locationManager.desiredAccuracy = kCLLocationAccuracyBest
        self.locationManager.requestWhenInUseAuthorization()
        self.locationManager.startUpdatingLocation()
        println("got this far")
  
    }
    func locationManager(manager: CLLocationManager!, didUpdateLocations locations: [AnyObject]!) {
        println(locations)
        let currentLocation = locations.last as! CLLocation
    println("locations = \(currentLocation.coordinate.latitude) \(currentLocation.coordinate.longitude)")
    }
    
    func locationManager(manager: CLLocationManager!, didFailWithError error:NSError){
    println("error: " + error.localizedDescription)
    }

}

