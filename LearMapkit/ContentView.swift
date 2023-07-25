//
//  ContentView.swift
//  LearMapkit
//
//  Created by magistra aptam on 24/07/23.
//

import SwiftUI
import MapKit




struct ContentView: View {
    @ObservedObject var locations: VacationVIewModel = VacationVIewModel()
    @State var textfield: String = ""
    @State var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -8.58333, longitude: 116.11667), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    var body: some View {
        NavigationView {
            Map(coordinateRegion: $mapRegion, annotationItems: locations.locationsArray) { location in
                MapAnnotation(coordinate: location.location){
                    NavigationLink {
                        Text("\(location.name)")
                    } label: {
                        Image(systemName: "mappin.circle.fill")
                             
                    }

                }
            }
            .ignoresSafeArea()
        }
      }
  }




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
