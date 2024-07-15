//
//  LargeText.swift
//  ViewsAndModifiers
//
//  Created by Eliezer Rodrigo Beltramin de Sant Ana on 15/07/24.
//

import SwiftUI

struct LargeText: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundStyle(.blue)
    }
}

extension View {
    func largeText() -> some View {
        modifier(LargeText())
    }
}

#Preview {
    Text("Eliezer")
        .largeText()
}
