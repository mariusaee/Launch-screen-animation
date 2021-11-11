//
//  Icon.swift
//  Launch screen animation
//
//  Created by Marius Malyshev on 10.11.2021.
//

import SwiftUI

struct IconView: View {
    private let standardColors = [
        Color.pink,
        .orange,
        .yellow,
        .green,
        .mint,
        .blue,
        .indigo,
        .purple,
    ]
    
    var body: some View {
        VStack {
            ForEach(standardColors, id: \.self) { color in
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(color)
            }
        }
        .frame(width: 200, height: 200)
    }
}


struct IconView_Previews: PreviewProvider {
    static var previews: some View {
        IconView()
    }
}
