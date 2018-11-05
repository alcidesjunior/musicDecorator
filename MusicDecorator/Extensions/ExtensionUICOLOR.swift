//
//  ExtensionUICOLOR.swift
//  MusicDecorator
//
//  Created by Alcides Junior on 04/11/18.
//  Copyright © 2018 Alcides Junior. All rights reserved.
//

import Foundation
import UIKit
extension UIColor {
    static func random() -> UIColor {
        return UIColor(red:   .random(),
                       green: .random(),
                       blue:  .random(),
                       alpha: 0.4)
    }
}
