//
//  Title.swift
//  ViewsAndModifiers
//
//  Created by Eliezer Rodrigo Beltramin de Sant Ana on 15/07/24.
//

import SwiftUI

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundStyle(.white)
            .padding()
            .background(.blue)
            .clipShape(.rect(cornerRadius: 10))
    }
}

extension View {
    func titleStyle() -> some View {
        modifier(Title())
    }
}

#Preview {
    Text("Alguma coisa")
        .titleStyle()
}
