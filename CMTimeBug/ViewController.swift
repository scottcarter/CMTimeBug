//
//  ViewController.swift
//  CMTimeBug
//
//  Created by Scott Carter on 10/8/14.
//  Copyright (c) 2014 Scott Carter. All rights reserved.
//

import UIKit

import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
        var value: CMTimeValue = CMTimeValue(10479)
        var timescale: CMTimeScale = CMTimeScale(600)
        var flags: CMTimeFlags = CMTimeFlags(1)
        var epoch: CMTimeEpoch = CMTimeEpoch(0)
        
        var mytime: CMTime = CMTime(value: value, timescale: timescale, flags: flags, epoch: epoch)


        Utility.bridgedCallWithFloat(5.1, atTime: mytime)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

