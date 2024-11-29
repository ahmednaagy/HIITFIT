//
//  ExerciseView.swift
//  HIITFIT
//
//  Created by Ahmed Nagy on 09/06/2024.
//

import SwiftUI
import AVKit

struct ExerciseView: View {

	let index: Int

	var exercise: Exercise {
		Exercise.exercises[index]
	}

	let interval: TimeInterval = 30.0

	var body: some View {
		GeometryReader { geometry in
			VStack {
				HeaderView(exerciseName: exercise.exerciseName)
					.padding(.bottom)
				if let url = Bundle.main.url(
					forResource: exercise.videoName,
					withExtension: "mp4"
				) {
					VideoPlayer(player: AVPlayer(url: url))
						.frame(height: geometry.size.height * 0.45)
				} else {
					Text("Could't find \(exercise.videoName).mp4")
						.foregroundStyle(.red)
				}
				Text(Date().addingTimeInterval(interval), style: .timer)
					.font(.system(size: geometry.size.height * 0.07))
				Button("Start/Done") { }
					.font(.title3)
					.padding()
				Text("Rating")
				Spacer()
				Button("History") { }
					.padding(.bottom)
			}
		}
	}
}

#Preview {
	ExerciseView(index: 0)
}

