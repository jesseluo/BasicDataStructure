//
//  StackSpec.swift
//  BaseDataStructure
//
//  Created by Jesse Luo on 15/7/26.
//  Copyright © 2015年 JesseLuo. All rights reserved.
//

import Quick
import Nimble
import BasicDataStructure

class StackSpec: QuickSpec {
    override func spec() {
        describe("a stack") {
            var stack: Stack<String>!
            
            beforeEach {
                stack = Stack<String>()
                stack.push("A")
                stack.push("B")
                stack.push("C")
            }

            it("should be able to push & pop elememts") {
                expect(stack.count).to(equal(3))
                expect(stack.pop()).to(equal("C"))
                expect(stack.count).to(equal(2))
                stack.push("D");
                expect(stack.pop()).to(equal("D"))
                expect(stack.pop()).to(equal("B"))
                expect(stack.pop()).to(equal("A"))
                expect(stack.pop()).to(beNil())
                expect(stack.count).to(equal(0))
            }

            it("should be able to clear elememts") {
                expect(stack.isEmpty).to(equal(false))
                stack.clear()
                expect(stack.count).to(equal(0))
                stack.clear()
                expect(stack.count).to(equal(0))
                expect(stack.isEmpty).to(equal(true))
            }
        }
    }
}
