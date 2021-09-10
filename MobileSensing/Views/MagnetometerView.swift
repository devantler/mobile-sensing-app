//
//  SensorView.swift
//  SensorView
//
//  Created by Nikolai Emil Damm on 10/09/2021.
//

import SwiftUI
import CoreMotion

struct MagnetometerView: View {
    @ObservedObject
    var motionManager: MotionManager

    var body: some View {
        VStack {
                Text("Magnetometer Data:")
                Text("X: \(motionManager.x)")
                Text("Y: \(motionManager.y)")
                Text("Z: \(motionManager.z)")
            }
    }
}

struct MagnetometerView_Previews: PreviewProvider {
    static var previews: some View {
        MagnetometerView(motionManager: MotionManager())
    }
}
