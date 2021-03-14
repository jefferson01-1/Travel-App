//
//  worldview.swift
//  firstapp
//
//  Created by mac on 01/02/2021.
//

import MapKit
import SwiftUI

struct worldview: View {
    @EnvironmentObject var Locations: locations
   @State var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275),
        span: MKCoordinateSpan(latitudeDelta: 40, longitudeDelta: 40)
    )
    var body: some View {
        Map(coordinateRegion: $region, annotationItems:Locations.places) {
            Locations in
            MapAnnotation (coordinate: CLLocationCoordinate2DMake(Locations.latitude, Locations.longitude)) {
                NavigationLink(destination: ContentView(location: Locations)){
                    Image(Locations.country)
                        .resizable()
                        .cornerRadius(10)
                        .frame(width: 80, height: 40)
                        .shadow(radius: 3)
                }
            }
        }
            .navigationTitle("locations")
    }
}

struct worldview_Previews: PreviewProvider {
    static var previews: some View {
        worldview()
    }
}
