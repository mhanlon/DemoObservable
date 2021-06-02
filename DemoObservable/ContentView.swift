//
//  ContentView.swift
//  DemoObservable
//
//  Created by Matthew Hanlon on 02/06/2021.
//

import SwiftUI

struct ContentView: View {
    @StateObject var minutesController = MinutesController()
    
    var body: some View {
        VStack(spacing: 20) {
            
            Text("Hello, \(minutesController.currentValue)")
            Button("Start Timer") {
                self.minutesController.startTimer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
