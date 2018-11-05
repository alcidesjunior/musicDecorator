//
//  ExtensionCGFLOAT.swift
//  MusicDecorator
//
//  Created by Alcides Junior on 04/11/18.
//  Copyright © 2018 Alcides Junior. All rights reserved.
//

import Foundation
import UIKit
extension CGFloat {
    static func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}
