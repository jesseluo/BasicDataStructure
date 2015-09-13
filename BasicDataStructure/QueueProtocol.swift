//
//  QueueProtocol.swift
//  BasicDataStructure
//
//  Created by Jesse Luo on 15/9/13.
//  Copyright © 2015年 Jesse Luo. All rights reserved.
//

import Foundation

public protocol QueueProtocol: BasicDSOperationProtocol {
    typealias T
    
    func enqueue(element: T)
    func dequeue() -> T?
    func dequeueAll() -> [T]
}
