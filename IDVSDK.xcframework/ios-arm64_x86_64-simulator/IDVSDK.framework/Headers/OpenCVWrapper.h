//
//  OpenCVWrapper.h
//  OpenCVproject
//
//  Created by Anish Kumar Dubey on 03/08/19.
//  Copyright © 2019 Anish Kumar Dubey. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface OpenCVWrapper : NSObject

+ (NSString *)openCVVersionString;
+ (BOOL)isGlareDetected:(UIImage*)inputImage;

@end

NS_ASSUME_NONNULL_END
