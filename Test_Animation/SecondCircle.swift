//
//  TextAndCircleView.swift
//  Test_Animation
//
//  Created by Elliot Knight on 01/11/2022.
//

import SwiftUI

struct TextAndCircleView: View {
	var nameSpace: Namespace.ID
    var body: some View {
		VStack {
			Spacer()
			Text("En bas")
				.frame(width: 100)
				.matchedGeometryEffect(id: "text", in: nameSpace)

			Circle()
				.frame(width: 50)
				.foregroundColor(.red)
				.matchedGeometryEffect(id: "upper", in: nameSpace)
		}
		.transition(AnyTransition.opacity.animation(.easeInOut(duration: 2)))
    }
}

struct TextAndCircleView_Previews: PreviewProvider {
	@Namespace static var nameSpace
    static var previews: some View {

		TextAndCircleView(nameSpace: nameSpace)
    }
}
