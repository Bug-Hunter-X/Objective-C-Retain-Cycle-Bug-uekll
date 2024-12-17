# Objective-C Retain Cycle Bug

This repository demonstrates a common Objective-C bug involving retain cycles and memory leaks. The bug occurs due to improper handling of strong properties and object ownership, leading to objects not being deallocated even after they are no longer needed.

## Bug Description
The `bug.m` file contains code that creates a retain cycle.  A `MyClass` object holds a strong reference to an `NSString` object, while the `NSString` object is not explicitly released.  This results in both objects remaining in memory, even when they are no longer in use, leading to a memory leak.

## Solution
The `bugSolution.m` file provides a solution to this issue.  By using techniques like weak references or proper object lifecycle management, the retain cycle is broken, and memory leaks are avoided.