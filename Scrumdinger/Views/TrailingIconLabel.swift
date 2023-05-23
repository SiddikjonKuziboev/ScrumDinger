//
//  TrailingIconLabel.swift
//  Scrumdinger
//
//  Created by Kuziboev Siddikjon on 17/05/23.
//

import SwiftUI

struct TrailingIconLabel: LabelStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.title
        configuration.icon
        
    }
    
}

extension LabelStyle where Self == TrailingIconLabel {
    
    static var trailingIcon: Self { Self() }
}
