//
//  Circular.swift
//  SwiftUICustomCirculars
//
//  Created by Jinu on 17/11/2023.
//

import SwiftUI

struct Circular: View {
    let lineWidth : CGFloat
    let bacgroundColor: Color
    let foregroundColor : Color
    let percentage: Double

    var body: some View {
        GeometryReader{geometry in
            ZStack{
                CircularShape()
                    .stroke(style: StrokeStyle(lineWidth: lineWidth))
                    .fill(bacgroundColor)
               
                CircularShape(percent: percentage)
                    .stroke(style: StrokeStyle(lineWidth: lineWidth))
                    .fill(foregroundColor)
            }
            .animation(.easeIn(duration: 1.0), value: percentage)
            .padding(lineWidth/1.5)
        }

        
    }
}

#Preview {
    Circular(lineWidth: 10, bacgroundColor: .red, foregroundColor: .green, percentage: 50)
}
