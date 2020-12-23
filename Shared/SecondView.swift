//
//  SecondView.swift
//  ObservableDemo
//
//  Created by Xiaochun Shen on 2020/12/23.
//

import SwiftUI

struct SecondView: View {
    @StateObject var timerData: TimerData
    
    var body: some View {
        
        VStack {
            Text("Second View")
                .font(.largeTitle)
            Text("Timer Count = \(timerData.timeCount)")
                .font(.headline)
        }
        .padding()
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(timerData: TimerData())
    }
}
