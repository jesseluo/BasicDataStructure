//
//  BasicDSOperationProtocol.swift
//  BasicDataStructure
//
//  Created by Jesse Luo on 15/7/26.
//  Copyright © 2015年 Jesse Luo. All rights reserved.
//

import Foundation

public protocol BasicDSOperationProtocol {
    var count: Int { get }
    var isEmpty: Bool { get }
    
    func clear()
}
