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
    func enableAutomaticFontUpdate(with font: @autoclosure @escaping () -> DTFont?, updateImmediately: Bool)
    func disableAutomaticFontUpdate()
}
