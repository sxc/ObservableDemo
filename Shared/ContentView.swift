//
//  ContentView.swift
//  Shared
//
//  Created by Xiaochun Shen on 2020/12/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var timerData: TimerData = TimerData()
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Timer count = \(timerData.timeCount)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                Button(action: resetCount) {
                    Text("Reset Counter")
                }
                
                NavigationLink(
                    destination: SecondView(timerData: timerData)) {
                        Text("Next Screen")
                    }
                .padding()
            }
        }
    }
    
    func resetCount() {
        timerData.resetCount()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
