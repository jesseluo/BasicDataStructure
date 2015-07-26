//
//  Queue.swift
//  BaseDataStructure
//
//  Created by Jesse Luo on 15/7/26.
//  Copyright © 2015年 JesseLuo. All rights reserved.
//

import Foundation

class Queue<T>: NSObject {
    private var queue = [T]()
    
    var count: Int {
        get {
            return queue.count
        }
    }
    
    var isEmpty: Bool {
        get {
            return queue.isEmpty
        }
    }
    
    func enqueue(element: T) {
        queue.append(element)
    }
    
    func dequeue() -> T? {
        return queue.count > 0 ? queue.removeAtIndex(0) : nil
    }
    
    func clear() {
        queue.removeAll()
    }
}
