//
//  ContentView.swift
//  HIITFIT
//
//  Created by Ahmed Nagy on 08/06/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        TabView {
            WelcomeView()
            ForEach(0..<4) { index in
                ExerciseView(index: index)
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .never))

    }
}

#Preview {
    ContentView()
}
