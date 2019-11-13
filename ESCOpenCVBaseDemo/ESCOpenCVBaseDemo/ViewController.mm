//
//  ViewController.m
//  ESCOpenCVBaseDemo
//
//  Created by xiangmingsheng on 2019/11/13.
//  Copyright © 2019 xms. All rights reserved.
//

#import "ViewController.h"
#import "ESCOpenCVImageTool.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *firstImageView;

@property (weak, nonatomic) IBOutlet UIImageView *secondImageView;

@property (weak, nonatomic) IBOutlet UIImageView *thirdImageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImage *image = [UIImage imageNamed:@"IMG_0582"];
    //原图片
    self.firstImageView.image = image;
    
    //转换为OPenCV图片
    cv::Mat cvmat = [ESCOpenCVImageTool cvMatFromUIImage:image];
    
    //转换为原图片
    UIImage *image2 = [ESCOpenCVImageTool UIImageFromCVMat:cvmat];
    self.secondImageView.image = image2;
    
    //转换为灰度图片
    cv::Mat greyMat;
    cv::cvtColor(cvmat, greyMat, cv::COLOR_BGR2GRAY);
    //转换为UIImage进行显示
    UIImage *resultImage = [ESCOpenCVImageTool UIImageFromCVMat:greyMat];
    self.thirdImageView.image = resultImage;
    
}


@end
