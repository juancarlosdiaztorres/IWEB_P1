//
//  ViewController.swift
//  Hola Mundo
//
//  Created by Juan Carlos Díaz Torres on 13/09/2017.
//  Copyright © 2017 Juan Carlos Díaz Torres. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    @IBOutlet weak var msgLabel: UILabel!
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func updateHola(_ sender: UIButton) {
        msgLabel.text = "Hola"
        slider.value = 0.5
        slider.sendActions(for: .valueChanged)
        
        let center = CLLocationCoordinate2D(latitude: 55.754167, longitude: 37.62)
        let span = MKCoordinateSpan(latitudeDelta: 0.007, longitudeDelta: 0.007)
        let plazaRoja = MKCoordinateRegion(center: center, span: span)
        
        mapView.setRegion(plazaRoja, animated: true)
        mapView.mapType = .hybrid
        
        
    }
   
    
    @IBAction func updateMundo(_ sender: UIButton) {
        msgLabel.text = "Mundo"
        mapView.mapType = .satellite
    }
    
    @IBAction func updateAlpha(_ sender: UISlider) {
        msgLabel.alpha = CGFloat(sender.value)
    }
    
    @IBAction func updateMadrid(_ sender: UIButton){
        let center = CLLocationCoordinate2D(latitude: 40.4154, longitude: -3.7074)
        let span = MKCoordinateSpan(latitudeDelta: 0.004, longitudeDelta: 0.004)
        let plazaMayor = MKCoordinateRegion(center: center, span: span)
        
        mapView.setRegion(plazaMayor, animated: true)
    }
   
}

