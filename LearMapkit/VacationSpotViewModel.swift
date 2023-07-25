//
//  VacationSpotViewModel.swift
//  LearMapkit
//
//  Created by magistra aptam on 25/07/23.
//

import Foundation
import MapKit
class VacationVIewModel: ObservableObject{
    @Published var locationsArray: [VacationSpot] = []
    
    init() {
        getVacation()
    }
    func getVacation(){
        let vacation1 =  VacationSpot(name: "pantai sengiggi", location: CLLocationCoordinate2D(latitude: -8.485466, longitude: 116.047302))
        
        locationsArray.append(vacation1)
    }
}
