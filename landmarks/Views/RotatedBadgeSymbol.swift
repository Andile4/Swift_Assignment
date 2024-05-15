//
//  RotatedBadgeSymbol.swift
//  landmarks
//
//  Created by IACD Training 13 on 2024/04/26.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
    let angle: Angle

    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}
#Preview {
    RotatedBadgeSymbol(angle: Angle(degrees: 5))
}
