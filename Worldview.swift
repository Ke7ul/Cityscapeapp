//
//  Worldview.swift
//  cityscapes
//
//  Created by Ketul Adesara on 25/05/21.
//

import MapKit
import SwiftUI

struct Worldview: View {
    @EnvironmentObject var locations: Locations
    @State var region = MKCoordinateRegion(
    center: CLLocationCoordinate2D(latitude: 20.5937, longitude: 78.9629) ,
        span: MKCoordinateSpan(latitudeDelta: 40, longitudeDelta: 40)
    )
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: locations.places) {
            location in
            MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)) {
                NavigationLink(destination:
                    ContentView (location: location)) {
                    Image(location.country)
                        .resizable()
                        .cornerRadius(10)
                        .frame(width: 80, height: 40)
                        .shadow(radius: 3)

                }
                            }
        }
            .navigationTitle("Locations")
    }
}

struct Worldview_Previews: PreviewProvider {
    static var previews: some View {
        Worldview()
    }
}
