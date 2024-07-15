//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Eliezer Rodrigo Beltramin de Sant Ana on 15/07/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello world")
//                .modifier(Title()) - Option 1 - Calling the modifier directly
                .titleStyle() // Option 2 - Using View Extension method
            
            Color.blue
                .frame(width: 300, height: 200)
                .watermarked(with: "Hacking with Swift")
            
            GridStack(rows: 4, columns: 4) { row, col in
                Text("R\(row) C\(col)")
            }
            
            GridStack(rows: 4, columns: 4) { row, col in
                Image(systemName: "\(row * 4 + col).circle")
                Text("R\(row) C\(col)")
            }
        }
    }
}

#Preview {
    ContentView()
}
