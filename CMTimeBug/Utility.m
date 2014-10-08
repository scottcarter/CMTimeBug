//
//  Utility.m
//  CMTimeBug
//
//  Created by Scott Carter on 10/8/14.
//  Copyright (c) 2014 Scott Carter. All rights reserved.
//

#import "Utility.h"

@implementation Utility

+ (void)bridgedCallWithFloat:(float)f
                      atTime:(CMTime)mytime
{
    
//   value: CMTimeValue (int64_t)
//   timescale: CMTimeScale (int32_t)
//   flags: CMTimeFlags (uint32_t)
//   epoch: CMTimeEpoch (int64_t)

    NSLog(@"value=%lld timescale=%d flags=%d epoch=%lld ",mytime.value, mytime.timescale, mytime.flags, mytime.epoch);
    
    
    /*
     
     Correct output with simulator on iPhone 5S, 6 and 6 Plus.
     Correct output also generated with actual iPhone 4S device (other devices not tested):
     2014-10-08 09:22:34.865 CMTimeBug[46880:2751233] value=10479 timescale=600 flags=1 epoch=0
     
     
     Incorrect output with simulator on iPhone 4S, 5:
     2014-10-08 09:23:54.823 CMTimeBug[46963:2752781] value=45006962295384 timescale=0 flags=600 epoch=1
     
     
     
     */
    
    
}

@end
