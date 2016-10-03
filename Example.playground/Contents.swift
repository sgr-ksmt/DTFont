//: Playground - noun: a place where people can play

import UIKit
import Foundation
import DTFont

// use UIFontTextStyle
_ = DTFont.make(with: "Avenir-Book", textStyle: .body)

// use DTSize (DTSize is a enum wrapped UIContentSizeCategory
_ = DTFont.make(with: "Avenir-Book") { size -> CGFloat in
    switch size {
    case .xs ... .l:
        return 18.0
    case .xl ... .xxxl:
        return 22.0
    default:
        return 24.0
    }
}

// use DTSize and comparision operator
_ = DTFont.make(with: "Avenir-Book") { size in size < .xl ? 18.0  : 22.0 }
_ = DTFont.make(with: "Avenir-Book") { $0 < .xl ? 18.0  : 22.0 }

class ViewControlelr: UIViewController {
    
    @IBOutlet private weak var label: UILabel! {
        didSet {
            label.enableAutomaticFontUpdate(with: DTFont.make(with: "Avenir-Book") { $0 < .l ? 18.0 : 22.0 })
        }
    }
}
