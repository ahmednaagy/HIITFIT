//
//  Exercise.swift
//  HIITFIT
//
//  Created by Ahmed Nagy on 26/11/2024.
//

import Foundation

struct Exercise {
	let exerciseName: String
	let videoName: String

	enum ExerciseEnum: String {
		case squat = "Squat"
		case stepUp = "Step Up"
		case burpee = "Burpee"
		case sunSalute = "Sun Salute"
	}
}

extension Exercise {
	static let exercises: [Exercise] =
	[
		Exercise(exerciseName: ExerciseEnum.squat.rawValue, videoName: "squat"),
		Exercise(exerciseName: ExerciseEnum.stepUp.rawValue, videoName: "step-up"),
		Exercise(exerciseName: ExerciseEnum.burpee.rawValue, videoName: "burpee"),
		Exercise(exerciseName: ExerciseEnum.sunSalute.rawValue, videoName: "sun-salute")
	]
}
