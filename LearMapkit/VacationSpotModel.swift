//
//  VacationSpotModel.swift
//  LearMapkit
//
//  Created by magistra aptam on 25/07/23.
//

import Foundation
import MapKit
struct VacationSpot: Identifiable{
    var id = UUID()
    var name: String
    var location: CLLocationCoordinate2D
}
