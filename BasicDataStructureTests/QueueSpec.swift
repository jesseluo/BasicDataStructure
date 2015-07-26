//
//  QueueSpec.swift
//  BaseDataStructure
//
//  Created by Jesse Luo on 15/7/26.
//  Copyright © 2015年 JesseLuo. All rights reserved.
//

import Quick
import Nimble
import BasicDataStructure

class QueueSpec: QuickSpec {
    override func spec() {
        describe("a quque") {
            var queue: Queue<String>!
            
            beforeEach {
                queue = Queue<String>()
                queue.enqueue("A")
                queue.enqueue("B")
                queue.enqueue("C")
            }
            
            it("should be able to enqueue & dequeue elememts") {
                expect(queue.count).to(equal(3))
                expect(queue.dequeue()).to(equal("A"))
                expect(queue.count).to(equal(2))
                queue.enqueue("D");
                expect(queue.dequeue()).to(equal("B"))
                expect(queue.dequeue()).to(equal("C"))
                expect(queue.dequeue()).to(equal("D"))
                expect(queue.dequeue()).to(beNil())
                expect(queue.count).to(equal(0))
            }

            it("should be able to dequeue all elememts") {
                expect(queue.isEmpty).to(equal(false))
                expect(queue.dequeueAll()).to(equal(["A", "B", "C"]))
                expect(queue.count).to(equal(0))
                expect(queue.dequeueAll()).to(equal([]))
                expect(queue.count).to(equal(0))
                expect(queue.isEmpty).to(equal(true))
            }

            it("should be able to clear elememts") {
                expect(queue.isEmpty).to(equal(false))
                queue.clear()
                expect(queue.count).to(equal(0))
                queue.clear()
                expect(queue.count).to(equal(0))
                expect(queue.isEmpty).to(equal(true))
            }
        }
    }
}
