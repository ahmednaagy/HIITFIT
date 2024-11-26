//
//  ExerciseView.swift
//  HIITFIT
//
//  Created by Ahmed Nagy on 09/06/2024.
//

import SwiftUI

struct ExerciseView: View {

	let videoNames = ["squat", "step-up", "burpee", "sun-salute"]
	let exerciseNames = ["Squat", "Step Up", "Burpee", "Sun Salute"]

	let index: Int

	var body: some View {
		VStack {
			HeaderView(exerciseName: exerciseNames[index])
			Text("Video player")
			Text("Timer")
			Text("Start/Done button")
			Text("Rating")
			Text("History button")
		}
	}
}

#Preview {
	ExerciseView(index: 0)
}

