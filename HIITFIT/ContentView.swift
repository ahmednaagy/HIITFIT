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
			ForEach(Exercise.exercises.indices, id: \.self) { index in
				ExerciseView(index: index)
			}
        }
		.tabViewStyle(.page)
		.indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}

#Preview {
    ContentView()
}
