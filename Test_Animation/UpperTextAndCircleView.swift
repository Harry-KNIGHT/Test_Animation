//
//  TextAndCircleView.swift
//  Test_Animation
//
//  Created by Elliot Knight on 01/11/2022.
//

import SwiftUI

struct UpperTextAndCircleView: View {
	var nameSpace: Namespace.ID
	@Binding var isFlipped: Bool
    var body: some View {
		VStack {
			Spacer()
			Text("en petit")
				.frame(width: 100)
				.matchedGeometryEffect(id: "text", in: nameSpace)
			ZStack {
				Circle()
					.frame(height: 200)
					.foregroundColor(isFlipped ? .blue : .orange)
					.scaleEffect(isFlipped ? 1.3 : 0.4)

					.matchedGeometryEffect(id: "upper", in: nameSpace, properties: .position)
				Image(systemName: "play.fill")
					.foregroundColor(.white)
					.font(.largeTitle)



			}
		}

    }
}

struct UpperTextAndCircleView_Previews: PreviewProvider {
	@Namespace static var nameSpace
    static var previews: some View {

		UpperTextAndCircleView(nameSpace: nameSpace, isFlipped: .constant(false))
    }
}
