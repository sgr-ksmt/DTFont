//
//  TableViewCell.swift
//  DTFont
//
//  Created by Suguru Kishimoto on 9/26/16.
//  Copyright © 2016 Suguru Kishimoto. All rights reserved.
//

import UIKit
import DTFont

class TableViewCell: UITableViewCell {

    @IBOutlet private weak var label: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(_ fontName: String, fontSize: @escaping (DTFontSize) -> CGFloat, text: String) {
        label.text = text
        label.enableAutomaticFontUpdate(with: DTFont.make(with: fontName, dynamicSize: fontSize))
    }
    
    deinit {
//        label.disableAutomaticFontUpdate()
        print("deinit")
    }
}
