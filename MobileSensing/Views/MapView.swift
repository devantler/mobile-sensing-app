import SwiftUI
import MapKit
import CoreLocationUI

struct MapView: View {
    @State private var region: MKCoordinateRegion
    @StateObject private var locationManager = LocationManager()
    
    init() {
        _region = State(initialValue: MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: Double.random(in: 0...100), longitude: Double.random(in: 0...100)),
            span: MKCoordinateSpan(
                latitudeDelta: 0.2,
                longitudeDelta: 0.2)
        ));
    }
    
    
    var body: some View {
        VStack{
            Map(coordinateRegion: $region)
            LocationButton(.currentLocation) {
                withAnimation {
                    region.center = locationManager.location ?? region.center
                }
            }
            .symbolVariant(.fill)
            .foregroundColor(.white)
            .cornerRadius(20)
            
            Text("Your location: \(region.center.latitude), \(region.center.longitude)")
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
