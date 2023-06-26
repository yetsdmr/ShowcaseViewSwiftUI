//
//  Highlight.swift
//  ShowcaseViewSwiftUI
//
//  Created by Yunus Emre Taşdemir on 26.06.2023.
//

import SwiftUI

// Highlight View Properties
struct Highlight: Identifiable, Equatable {
    var id: UUID = .init()
    var anchor: Anchor<CGRect>
    var title: String
    var cornerRadius: CGFloat
    var style: RoundedCornerStyle = .continuous
    var scale: CGFloat = 1
}
