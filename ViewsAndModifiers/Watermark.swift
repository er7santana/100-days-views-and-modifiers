//
//  Watermark.swift
//  ViewsAndModifiers
//
//  Created by Eliezer Rodrigo Beltramin de Sant Ana on 15/07/24.
//

import SwiftUI

struct Watermark: ViewModifier {
    var text: String
    
    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content
            Text(text)
                .font(.caption)
                .foregroundStyle(.white)
                .padding()
                .background(.black)
        }
    }
}

extension View {
    func watermarked(with text: String) -> some View {
        modifier(Watermark(text: text))
    }
}

#Preview {
    Color.blue
        .frame(width: 300, height: 200)
        .watermarked(with: "Hacking with Swift")
}
