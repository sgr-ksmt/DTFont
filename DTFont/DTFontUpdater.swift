//
//  DTFontUpdater.swift
//  DTFont
//
//  Created by Suguru Kishimoto on 9/26/16.
//  Copyright © 2016 Suguru Kishimoto. All rights reserved.
//

import Foundation

public final class DTFontUpdater: NSObject {
    // update handler
    public typealias UpdateHandler = (UIContentSizeCategory) -> Void
    public var updateHandler: UpdateHandler?
    
    public override init() {
        super.init()
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(self.update(_:)),
            name: NSNotification.Name.UIContentSizeCategoryDidChange,
            object: nil
        )
    }
    
    @objc public func update(_: Notification) {
        self.updateHandler?(UIApplication.shared.preferredContentSizeCategory)
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
}
