//
//  DTFont.swift
//  DTFont
//
//  Created by Suguru Kishimoto on 9/26/16.
//  Copyright © 2016 Suguru Kishimoto. All rights reserved.
//

import Foundation

open class DTFont: UIFont {
    open class func make(with fontName: String, textStyle style: UIFontTextStyle) -> DTFont {
        return DTFont(name: fontName, textStyle: style)
    }
    open class func make(with fontName: String, dynamicSize: (DTFontSize) -> CGFloat) -> DTFont? {
        return DTFont(name: fontName, dynamicSizeHandler: dynamicSize)
    }
}
