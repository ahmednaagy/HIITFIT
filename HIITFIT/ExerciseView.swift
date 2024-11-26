//
//  ExerciseView.swift
//  HIITFIT
//
//  Created by Ahmed Nagy on 09/06/2024.
//

import SwiftUI

struct ExerciseView: View {

	let index: Int

	var exercise: Exercise {
		Exercise.exercises[index]
	}

	var body: some View {
		VStack {
			HeaderView(exerciseName: exercise.exerciseName)
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

