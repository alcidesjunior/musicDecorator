//
//  StructShow.swift
//  MusicDecorator
//
//  Created by Alcides Junior on 04/11/18.
//  Copyright © 2018 Alcides Junior. All rights reserved.
//

import Foundation
import UIKit
struct StructShow {
    let imageShow: UIImage?
    let placeShow: String?
    let dateShow: String?
    
    init(ForImageShow image: UIImage, ForPlaceShow place: String, ForDateShow dateshow: String) {
        self.imageShow = image
        self.placeShow = place
        self.dateShow = dateshow
    }
}
