//
//  ContentView.swift
//  Test_Animation
//
//  Created by Elliot Knight on 01/11/2022.
//

import SwiftUI

struct ContentView: View {
	@State private var isFlipped = false
	@Namespace private var nameSpace
	@State private var fontSize = 32.0

	var body: some View {
		VStack {
			if isFlipped {
				UpperTextAndCircleView(nameSpace: nameSpace, isFlipped: $isFlipped)
			} else {
				VStack {
					Text("EN GROS")
						.frame(width: 100)
						.matchedGeometryEffect(id: "text", in: nameSpace)
					ZStack {
						Circle()
							.frame(height: 200)
							.foregroundColor(isFlipped ? .blue : .orange)
							.scaleEffect(isFlipped ? 1.3 : 1.0)

							.matchedGeometryEffect(id: "upper", in: nameSpace, properties: .position)
						Image(systemName: "pause.fill")
							.foregroundColor(.white)
							.font(.custom("", size: fontSize, relativeTo: .largeTitle))



					}
				}
			}

		}
		.onTapGesture {
			withAnimation(.interpolatingSpring(stiffness: 55, damping: 10)) {
				isFlipped.toggle()
			}
		}
		.padding()
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
