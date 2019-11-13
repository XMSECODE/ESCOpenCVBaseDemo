//
//  ESCOpenCVImageTool.h
//  ESCOpenCVBaseDemo
//
//  Created by xiangmingsheng on 2019/11/13.
//  Copyright © 2019 xms. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <opencv2/opencv.hpp>

@interface ESCOpenCVImageTool : NSObject

+ (cv::Mat)cvMatFromUIImage:(UIImage *)image;

+ (UIImage *)UIImageFromCVMat:(cv::Mat)cvMat;
@end

