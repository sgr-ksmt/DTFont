//
//  UIFontPrivate.swift
//  DTFont
//
//  Created by Suguru Kishimoto on 9/26/16.
//  Copyright © 2016 Suguru Kishimoto. All rights reserved.
//

import Foundation
import UIKit

extension UIFont {
    convenience init(name fontName: String, textStyle style: UIFontTextStyle) {
        self.init (
            descriptor: UIFontDescriptor.preferredDescriptor (textStyle:style, fontName: fontName),
            size: 0.0
        )
    }
    
    convenience init?(name fontName: String, dynamicSizeHandler: (DTFontSize) -> CGFloat) {
        self.init(
            name: fontName,
            size: dynamicSizeHandler(DTFontSize(category: UIApplication.shared.preferredContentSizeCategory))
        )
    }
}

extension UIFontDescriptor {
    static func preferredDescriptor(textStyle: UIFontTextStyle, fontName: String) -> UIFontDescriptor {
        return UIFontDescriptor(name: fontName, size: UIFont.preferredFont(forTextStyle: textStyle).pointSize)
    }
}
