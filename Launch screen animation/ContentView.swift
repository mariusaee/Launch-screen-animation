//
//  ContentView.swift
//  Launch screen animation
//
//  Created by Marius Malyshev on 10.11.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var animate = false
    
    var body: some View {
        ZStack {
            StandardColorsView()
                .opacity(animate ? 1 : 0)
            IconView()
                .scaleEffect(animate ? 4 : 1)
                .opacity(animate ? 0 : 1)
                .onAppear(perform: animateLaunch)
        }
    }
    
    func animateLaunch() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.25) {
            withAnimation(.easeInOut(duration: 0.45)) {
                animate.toggle()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
