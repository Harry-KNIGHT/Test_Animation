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
				UpperTextAndCircleView(nameSpace: nameSpace)
			} else {
				VStack {
					Text("EN GROS")
						.frame(width: 100)
						.matchedGeometryEffect(id: "text", in: nameSpace)

					Image(systemName: "pause.fill")
						.foregroundColor(.white)
						.font(.custom("", size: fontSize, relativeTo: .largeTitle))
						.padding(30)
						.background(.red)
						.clipShape(Circle())
						.matchedGeometryEffect(id: "upper", in: nameSpace, properties: .position)
				}
				

			}

		}
		.onTapGesture {
			withAnimation {
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
