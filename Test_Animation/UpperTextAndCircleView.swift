//
//  TextAndCircleView.swift
//  Test_Animation
//
//  Created by Elliot Knight on 01/11/2022.
//

import SwiftUI

struct UpperTextAndCircleView: View {
	var nameSpace: Namespace.ID
    var body: some View {
		VStack {
			Spacer()
			Text("en petit")
				.frame(width: 100)
				.matchedGeometryEffect(id: "text", in: nameSpace)

			Image(systemName: "play.fill")
				.foregroundColor(.white)
				.font(.largeTitle)
				.padding(10)
				.background(.red)
				.clipShape(Circle())
				.matchedGeometryEffect(id: "upper", in: nameSpace, properties: .position)
		}

    }
}

struct UpperTextAndCircleView_Previews: PreviewProvider {
	@Namespace static var nameSpace
    static var previews: some View {

	UpperTextAndCircleView(nameSpace: nameSpace)
    }
}
