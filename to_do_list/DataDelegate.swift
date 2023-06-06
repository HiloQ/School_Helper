//
//  DataDelegate.swift
//  to_do_list
//
//  Created by Jakub Sukiennim on 06/06/2023.
//

import Foundation
protocol DataDelegate: AnyObject {
    func sendData(data: String)
}
