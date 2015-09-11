//
//  ViewController.swift
//  heyhey
//
//  Created by Douglas Binder on 9/5/15.
//  Copyright (c) 2015 Douglas Binder. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let initialLocation = CLLocation(latitude: 41.0781, longitude: -72.3508)
        let regionRadius : CLLocationDistance = 10000
        
        func centerMapOnLocation(location:CLLocation) {
            
            let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, regionRadius * 2.0, regionRadius * 2.0)
            mapView.setRegion(coordinateRegion, animated : true)
        }
        centerMapOnLocation(initialLocation)
        mapView.pitchEnabled = false
    }

    @IBOutlet weak var mapView: MKMapView!


}

