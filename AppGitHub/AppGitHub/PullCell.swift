//
//  PullCell.swift
//  AppGitHub
//
//  Created by Fabio Miciano on 16/02/17.
//  Copyright © 2017 Fabio Miciano. All rights reserved.
//

import Foundation
import UIKit

class PullCell: UITableViewCell {
    @IBOutlet weak var titlePull: UILabel!
    @IBOutlet weak var bodyPull: UILabel!
    @IBOutlet weak var imageProfile: UIView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var statusPull: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}