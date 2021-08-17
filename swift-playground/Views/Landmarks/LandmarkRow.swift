//
//  LandmarkRow.swift
//  swift-playground
//
//  Created by 白鳥天太 on 2021/08/17.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark

    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)

            Spacer()
            if landmark.isFavorite {
                           Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
           }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
   static var modelData = ModelData()
    static var previews: some View {
        Group {
            LandmarkRow(landmark: modelData.landmarks[0])
            LandmarkRow(landmark: modelData.landmarks[1])
                }
                .previewLayout(.fixed(width: 300, height: 70))
    }
}
