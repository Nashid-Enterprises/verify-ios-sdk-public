//
//  VideoController.h
//  MobileFaceNet-iOS
//
//  Created by 张建伟 on 2020/8/14.
//  Copyright © 2020 周文鹏. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <IDVSDK/MTCNN.h>
#import <IDVSDK/FaceAntiSpoofing.h>
#import <IDVSDK/MobileFaceNet.h>
#import <IDVSDK/VideoController.h>

NS_ASSUME_NONNULL_BEGIN

@interface VideoController : UIViewController

@property (assign, nonatomic) int type;
@property (class, strong, nonatomic) MobileFaceNet *mfn;
@property (class, strong, nonatomic) FaceAntiSpoofing *fas;
@property (class, strong, nonatomic) MTCNN *mtcnn;

+ (float)face:(UIImage *)image;
+ (float)faceCompare:(UIImage *)image image2: (UIImage *)image2;
+ (void)initAntiSpoofing;
+ (UIImage*)cropImgage:(UIImage *)image;

@end

NS_ASSUME_NONNULL_END
