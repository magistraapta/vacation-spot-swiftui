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
       let vacation1 = VacationSpot(name: "pantai senggigi", location: CLLocationCoordinate2D(latitude: -8.485466, longitude: 116.047302), spotImage: "senggigi", description: "Senggigi offers a range of accommodations, from luxury resorts to budget-friendly guesthouses, making it suitable for all types of travelers. The area is a hub for water sports and activities like snorkeling, diving, and surfing, as well as land-based adventures such as hiking and exploring nearby waterfalls.")
       
        let vacation2 = VacationSpot(name: "kota tua ampenan", location: CLLocationCoordinate2D(latitude: -8.570531, longitude: 116.085715), spotImage: "ampenan", description: "Ampenan is a historic city located on the Indonesian island of Lombok. It is part of the West Nusa Tenggara province and situated on the western coast of the island. Ampenan was once a significant trading port during the colonial era, which has left it with a mix of traditional and colonial architecture.")
        
        locationsArray.append(vacation1)
        locationsArray.append(vacation2)
    }
}
