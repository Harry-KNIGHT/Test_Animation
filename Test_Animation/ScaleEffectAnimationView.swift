//
//  ScaleEffectAnimationView.swift
//  Test_Animation
//
//  Created by Elliot Knight on 04/11/2022.
//

import SwiftUI

struct ScaleEffectAnimationView: View {
	@State private var isScaled = false
    var body: some View {
		VStack(spacing: 50) {
			Circle()
				.frame(height: 200)
				.foregroundColor(isScaled ? .blue : .orange)
				.scaleEffect(isScaled ? 1.3 : 1.0)

			Button {
				withAnimation {
					isScaled.toggle()
				}
			} label: {
				Label("Scale button", systemImage: "plus")
					.foregroundColor(isScaled ? .secondary : .white)

			}
			.buttonStyle(.borderedProminent)

		}
    }
}

struct ScaleEffectAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        ScaleEffectAnimationView()
    }
}
