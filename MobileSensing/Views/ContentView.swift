import SwiftUI
import CoreLocation

struct ContentView: View{
    var body: some View
    {
        TabView {
            MapView().tabItem {
                    Image(systemName: "1.circle")
                    Text("Map")
                }
                .tag(1)
            MagnetometerView(motionManager: MotionManager())
                .tabItem {
                    Image(systemName: "2.circle")
                    Text("Magnetometer")
                }
                .tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

