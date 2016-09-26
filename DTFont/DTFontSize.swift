//
//  DTFontSize.swift
//  DTFont
//
//  Created by Suguru Kishimoto on 9/26/16.
//  Copyright © 2016 Suguru Kishimoto. All rights reserved.
//

import Foundation
import UIKit

public enum DTFontSize: Int {
    case xs
    case s
    case m
    case l
    case xl
    case xxl
    case xxxl
    case a_m
    case a_l
    case a_xl
    case a_xxl
    case a_xxxl
    
    public init(category: UIContentSizeCategory) {
        switch category {
        case UIContentSizeCategory.extraSmall:
            self = .xs
        case UIContentSizeCategory.small:
            self = .s
        case UIContentSizeCategory.medium:
            self = .m
        case UIContentSizeCategory.large:
            self = .l
        case UIContentSizeCategory.extraLarge:
            self = .xl
        case UIContentSizeCategory.extraExtraLarge:
            self = .xxl
        case UIContentSizeCategory.extraExtraExtraLarge:
            self = .xxxl
        case UIContentSizeCategory.accessibilityMedium:
            self = .a_m
        case UIContentSizeCategory.accessibilityLarge:
            self = .a_l
        case UIContentSizeCategory.accessibilityExtraLarge:
            self = .a_xl
        case UIContentSizeCategory.accessibilityExtraExtraLarge:
            self = .a_xxl
        case UIContentSizeCategory.accessibilityExtraExtraExtraLarge:
            self = .a_xxxl
        default:
            self = .xs
        }
    }
}

extension DTFontSize: Comparable {
    public static func < (lhs: DTFontSize, rhs: DTFontSize) -> Bool {
        return lhs.rawValue < rhs.rawValue
    }
}
