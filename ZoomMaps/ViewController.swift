//
//  ViewController.swift
//  ZoomMaps
//
//  Created by Aswin Sasikanth Kanduri on 2023-01-19.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {

    @IBOutlet weak var zoomIn: UIButton!
    @IBOutlet weak var zoomOut: UIButton!
    @IBOutlet weak var map: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func zoomButton(_ sender: UIButton){
        
        switch sender.titleLabel!.text! {
        case "zoomIn":
            var region: MKCoordinateRegion = MKCoordinateRegion()
            var span: MKCoordinateSpan = MKCoordinateSpan()
            region.center = map.region.center
            span.latitudeDelta = map.region.span.latitudeDelta / 2.002
            span.longitudeDelta = map.region.span.longitudeDelta / 2.002
            region.span = span
            map.setRegion(region, animated: true)
            
        case "zoomOut":
            var region: MKCoordinateRegion = MKCoordinateRegion()
            var span: MKCoordinateSpan = MKCoordinateSpan()
            region.center = map.region.center
            span.latitudeDelta = map.region.span.latitudeDelta * 2.002
            span.longitudeDelta = map.region.span.longitudeDelta * 2.002
            region.span = span
            map.setRegion(region, animated: true)
            
        default:
            break
        }
    }

}

