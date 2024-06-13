//
//  mapsViewController.swift
//  final project
//
//  Created by Arlette Osuna on 5/3/24.
//

import UIKit
import MapKit

class mapsViewController: UIViewController {

    @IBOutlet weak var shoeStoreMap: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()

        let shoeStoreLocation = CLLocationCoordinate2D(latitude: 41.386957, longitude: 2.172272)
               let region = MKCoordinateRegion(center: shoeStoreLocation, latitudinalMeters: 500, longitudinalMeters: 500)
               shoeStoreMap.setRegion(region, animated: true)
               
               let shoe_store_annotation = MKPointAnnotation()
               shoe_store_annotation.coordinate = shoeStoreLocation
               shoe_store_annotation.title = "Trop Shoe"
               shoeStoreMap.addAnnotation(shoe_store_annotation)
           }
       }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

