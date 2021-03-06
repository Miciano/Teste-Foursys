//
//  ConstraintsProtocol.swift
//  AppGitHub
//
//  Created by Fabio Miciano on 15/02/17.
//  Copyright © 2017 Fabio Miciano. All rights reserved.
//

import Foundation
import UIKit

//Protocolo responsavel por facilitar o uso de constraints via código
protocol ConstraintsProtocol {
    func addConstraints(_ item: AnyObject?, toItem: AnyObject, attributes:[NSLayoutAttribute], constants:[CGFloat])
}

extension ConstraintsProtocol {
    
    func addConstraints(_ item: AnyObject?, toItem: AnyObject, attributes:[NSLayoutAttribute], constants:[CGFloat]) {
        
        guard let item = item  as? UIView else { return }
        
        var aux = 0
        var arrayContraints = [NSLayoutConstraint]()
        
        item.translatesAutoresizingMaskIntoConstraints = false
        //Passo por todos os atruibutos passados
        for attribute in attributes
        {
            //Crio um contraint usando as constants passadas
            let constraint = NSLayoutConstraint(item: item, attribute: attribute, relatedBy: .equal, toItem: toItem, attribute: attribute, multiplier: 1.0, constant: constants[aux])
            arrayContraints.append(constraint)
            aux += 1
        }
        
        //Adiciono as constraints
        toItem.addConstraints(arrayContraints)
    }
}
