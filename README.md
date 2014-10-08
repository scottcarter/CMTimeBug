# Overview

This project is intended to show a bug that occurs on the Xcode simulator when a call is made to an Objective C method from Swift code and includes a CMTime structure as one of the arguments under specific circumstances.

The bug is that the CMTime structure is corrupted when examined in the Objective C method that is called.

# Environment

**Xcode Version:** 6.0.1 (6A317)

**Simulator device:**  iPhone 4S,  iPhone 5.

Notes: 
* Does not occur on iPhone 5S or later.  
* Does not occur on physical device.

# Details

**Example**

This project contains an example which shows the issue.  In ViewController.swift, viewDidLoad() we make the call Utility.bridgedCallWithFloat(5.1, atTime: mytime) to Objective C where mytime is a CMTime structure.

**Conditions**

* Swift code calling Objective C.  Does not occur with Swift->Swift or Objective C -> Objective C calls.
* Does not occur if CMTime is passed as first argument.
* Does not occur if CMTime is passed by reference.
* Does not matter whether first argument is mutable or immutable.
* Did not occur with another structure type (tried CGSize)
* Bug occurs with deployment targets 7.0 through 8.0


**Console output**

Expected output: value=10479 timescale=600 flags=1 epoch=0

Actual output: value=45006962295384 timescale=0 flags=600 epoch=1


