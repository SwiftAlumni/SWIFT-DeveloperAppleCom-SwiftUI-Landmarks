//
//  Landmark.swift
//  Landmarks
//
//  Created by Ignasi Perez-Valls on 28/9/22.
//

import Foundation
import SwiftUI
import CoreLocation


struct LandMark: Codable, Hashable {
  var id: Int
  var name: String
  var park: String
  var state: String
  var description: String
  
  private var imageName: String
  var image: Image {
    Image(imageName)
  }
  
  private var coordinates: Coordinates
  var locationCoordinate: CLLocationCoordinate2D {
    CLLocationCoordinate2D(latitude: coordinates.latitude,
                           longitude: coordinates.longitude)
  }
  
  struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
  }
  
} // LandMark
