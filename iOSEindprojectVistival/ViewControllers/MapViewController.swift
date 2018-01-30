//
//  MapViewController.swift
//  iOSEindprojectVistival
//
//  Created by Michael Hollants on 29/01/2018.
//  Copyright © 2018 ehb. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation
import Contacts

class MapViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {
    
class MapPoint: NSObject, MKAnnotation {
    
    var coordinate: CLLocationCoordinate2D
    var title: String?
    
    init(coordinate: CLLocationCoordinate2D, title: String) {
        self.coordinate = coordinate
        self.title = title
        }
    }

    
    @IBOutlet weak var mapView: MKMapView!
    var stageName: String?
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
            setup()
            locationManager.delegate = self
        }
    
        func setup() {

            //punten op kaart aanmaken
            let mp1 = MapPoint.init(coordinate: CLLocationCoordinate2DMake(51.133640, 2.669839), title: "Mainstage")
            let mp2 = MapPoint.init(coordinate: CLLocationCoordinate2DMake(51.132442, 2.669345), title: "The Seahoarse Stage")
            let mp3 = MapPoint.init(coordinate: CLLocationCoordinate2DMake(51.133128, 2.671019), title: "Flied Shlimp Food & Other Fish")
            let mp4 = MapPoint.init(coordinate: CLLocationCoordinate2DMake(51.133048, 2.670976), title: "Fisherman's Fiend Booze & Barfs")
            let mp5 = MapPoint.init(coordinate: CLLocationCoordinate2DMake(51.133115, 2.671341), title: "Restrooms Number 1")
            let mp6 = MapPoint.init(coordinate: CLLocationCoordinate2DMake(51.132859, 2.668691), title: "Restrooms Number 2")
            let mp7 = MapPoint.init(coordinate: CLLocationCoordinate2DMake(51.133014, 2.671545), title: "Fisht Aid EHBO Stand")
            let mp8 = MapPoint.init(coordinate: CLLocationCoordinate2DMake(51.132785, 2.671319), title: "Seagate")
            //punt effectief toevoegen
            mapView.addAnnotation(mp1)
            mapView.addAnnotation(mp2)
            mapView.addAnnotation(mp3)
            mapView.addAnnotation(mp4)
            mapView.addAnnotation(mp5)
            mapView.addAnnotation(mp6)
            mapView.addAnnotation(mp7)
            mapView.addAnnotation(mp8)
            
            
            //zichtbaar deel op kaart bepalen
            let region = MKCoordinateRegionMake(CLLocationCoordinate2DMake(51.133640, 2.669839), MKCoordinateSpanMake(0.0025, 0.0025))
            mapView.region = region
            
            mapView.mapType = .satellite
 

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
