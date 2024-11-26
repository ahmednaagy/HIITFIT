//
//  HeaderView.swift
//  HIITFIT
//
//  Created by Ahmed Nagy on 26/11/2024.
//

import SwiftUI

struct HeaderView: View {

	let exerciseName: String

	var body: some View {
		VStack {
			Text(exerciseName)
				.font(.largeTitle)
			HStack {
				Image(systemName: "1.circle")
				Image(systemName: "2.circle")
				Image(systemName: "3.circle")
				Image(systemName: "4.circle")
			}
			.font(.title2)
		}
	}
}

#Preview(traits: .sizeThatFitsLayout) {
	HeaderView(exerciseName: "Squats")
}
