//
//  GradientButtonStyle.swift
//  Hike
//
//  Created by Melike on 22.08.2023.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle{
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal,30)
            .background(
                //Conditional statement with nil coalescing
                configuration.isPressed ?
                LinearGradient(
                    colors:
                        [.customGrayMedium,.customGrayLight],
                    startPoint: .top,
                    endPoint: .bottom)
                :
                LinearGradient(
                    colors:
                        [.customGrayLight, .customGrayMedium],
                    startPoint: .top,
                    endPoint: .bottom)
            )
            .cornerRadius(40)
    }
    
}
