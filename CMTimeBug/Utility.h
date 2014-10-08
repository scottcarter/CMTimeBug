//
//  Utility.h
//  CMTimeBug
//
//  Created by Scott Carter on 10/8/14.
//  Copyright (c) 2014 Scott Carter. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <AVFoundation/AVFoundation.h>

@interface Utility : NSObject

+ (void)bridgedCallWithFloat:(float)f
       atTime:(CMTime)mytime;

@end
