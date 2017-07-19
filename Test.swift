//
//  Test.swift
//  SwiftFuse
//
//  Created by Pavel Kostenko on 7/18/17.
//
//

import UIKit
import Mapbox

@objc class Test: NSObject {
    func helloFromSwift() {
        print("Hello from Swift :)")
    }
    
    func getInt() -> Int {
        return 25
    }
    
    func getMapBox() -> MGLMapView {
        let url = URL(string: "mapbox://styles/mapbox/streets-v10")
        let frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        let mapView = MGLMapView(frame: frame, styleURL: url)
        mapView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        mapView.setCenter(CLLocationCoordinate2D(latitude: 59.31, longitude: 18.06), zoomLevel: 9, animated: false)
        return mapView
    }
}
