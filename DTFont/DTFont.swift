//
//  DTFont.swift
//  DTFont
//
//  Created by Suguru Kishimoto on 9/26/16.
//  Copyright © 2016 Suguru Kishimoto. All rights reserved.
//

import Foundation
import UIKit

open class DTFont {
    open class func make(with fontName: String, textStyle style: UIFontTextStyle) -> UIFont {
        
        return UIFont(name: fontName, textStyle: style)
    }
    open class func make(with fontName: String, dynamicSize: (DTFontSize) -> CGFloat) -> UIFont? {
        return UIFont(name: fontName, dynamicSizeHandler: dynamicSize)
    }
}
