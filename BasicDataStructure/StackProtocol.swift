//
//  StackProtocol.swift
//  BasicDataStructure
//
//  Created by Jesse Luo on 15/9/13.
//  Copyright © 2015年 Jesse Luo. All rights reserved.
//

import Foundation

public protocol StackProtocol: BasicDSOperationProtocol {
    typealias T;
    
    func push(element: T);
    func pop() -> T?;
    func popAll() -> [T];
}
