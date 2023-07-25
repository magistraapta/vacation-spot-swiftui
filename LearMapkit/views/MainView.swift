//
//  MainView.swift
//  LearMapkit
//
//  Created by magistra aptam on 25/07/23.
//

import SwiftUI
import MapKit

struct MainView: View {
    @ObservedObject var locations: VacationVIewModel = VacationVIewModel()
    @State var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -8.58333, longitude: 116.11667), span: MKCoordinateSpan(latitudeDelta: 0.9, longitudeDelta: 0.9))
    var body: some View {
        NavigationView {
            ZStack(alignment: .bottom){
                Map(coordinateRegion: $mapRegion, annotationItems: locations.locationsArray) { location in
                    MapAnnotation(coordinate: location.location){
                        NavigationLink {
                            DetailSpotView(image: "\(location.spotImage)", title: "\(location.name)", description: "\(location.description)")
                        } label: {
                            Image(systemName: "mappin.circle.fill")
                                 
                        }

                    }
                }
                .ignoresSafeArea()
                VacationListView()
            }
            
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
