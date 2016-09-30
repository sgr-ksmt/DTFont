//
//  FormViewController.swift
//  DTFont
//
//  Created by Suguru Kishimoto on 9/29/16.
//  Copyright © 2016 Suguru Kishimoto. All rights reserved.
//

import UIKit
import DTFont

class FormViewController: UIViewController {

    @IBOutlet private weak var textField: UITextField!
    @IBOutlet private weak var textView: UITextView!
    
    private var enabled = false
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: rightButtonTitle, style: .plain, target: self, action: #selector(toggle(_:)))
        self.toggle(nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc private func toggle(_: UIBarButtonItem?) {
        if enabled {
            textField.disableAutomaticFontUpdate()
            textView.disableAutomaticFontUpdate()

        } else {
            textField.enableAutomaticFontUpdate(with: DTFont.make(with: "Avenir-Book", textStyle: .headline))
            textView.enableAutomaticFontUpdate(with: DTFont.make(with: "Avenir-Book", textStyle: .body))
        }
        
        self.enabled = !enabled

        navigationItem.rightBarButtonItem = UIBarButtonItem(title: rightButtonTitle, style: .plain, target: self, action: #selector(toggle(_:)))
    }
    
    var rightButtonTitle: String {
        return enabled ? "Disable" : "Enable"
    }
    
    deinit {
        print(#function)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
