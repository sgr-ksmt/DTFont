//
//  FontUpdatable.swift
//  DTFont
//
//  Created by Suguru Kishimoto on 9/26/16.
//  Copyright © 2016 Suguru Kishimoto. All rights reserved.
//

import Foundation
import UIKit

public protocol FontUpdatable: class {
    func enableAutomaticFontUpdate(with font: @autoclosure @escaping () -> DTFont, updateImmediately: Bool)
    func disableAutomaticFontUpdate()
}

private struct AssociatedKeys {
    struct Label {
        static var dtFontKey = ""
        static var updaterKey = ""
    }

    struct TextField {
        static var dtFontKey = ""
        static var updaterKey = ""
    }

    struct TextView {
        static var dtFontKey = ""
        static var updaterKey = ""
    }
}

public extension FontUpdatable where Self: UILabel {
    
    private var fontMaker: (() -> DTFont)? {
        get {
            return objc_getAssociatedObject(self, &AssociatedKeys.Label.dtFontKey) as? () -> DTFont
        }
        set {
            objc_setAssociatedObject(self, &AssociatedKeys.Label.dtFontKey, (newValue as Any), .OBJC_ASSOCIATION_RETAIN)
        }
    }
    
    private var updater: DTFontUpdater? {
        get {
            return objc_getAssociatedObject(self, &AssociatedKeys.Label.updaterKey) as? DTFontUpdater
        }
        set {
            objc_setAssociatedObject(self, &AssociatedKeys.Label.updaterKey, (newValue as Any), .OBJC_ASSOCIATION_RETAIN)
        }
    }
    
    public func enableAutomaticFontUpdate(with font: @autoclosure @escaping () -> DTFont, updateImmediately: Bool = true) {
        self.fontMaker = font
        let updater = DTFontUpdater()
        updater.updateHandler = { [weak self] _ in
            self?.font = self?.fontMaker?()
        }
        self.updater = updater
        
        if updateImmediately {
            self.font = font()
        }
    }
    
    public func disableAutomaticFontUpdate() {
        self.fontMaker = nil
        self.updater = nil
    }
}
