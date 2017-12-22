//
//  RSSMedia.swift
//  Alamofire
//
//  Created by Becker, Daniel on 22.12.17.
//

import Foundation

open class RSSMedia: CustomStringConvertible, Codable {

    open var url: String?
    open var type: String?
    open var expression: String?
    open var width: Int?
    open var height: Int?
    open var attributes: [String: String]?
    
    convenience init(attributes: [String: String]) {
        self.init()
        
        for (key, value) in attributes {
            switch key {
            case "url":
                url = value
            case "type":
                type = value
            case "expression":
                expression = value
            case "width":
                width = Int(value)
            case "height":
                height = Int(value)
            default:
                break;
            }
        }
    }
    
    open var description: String {
        return "\turl: \(String(describing: url))\n\ttype: \(String(describing: type))\n\texpression: \(String(describing: expression))\n\twidth: \(String(describing: width))\n\theight: \(String(describing: height))\n\n"
    }
}
