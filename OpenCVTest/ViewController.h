//
//  ViewController.h
//  OpenCVTest
//
//  Created by YongJai on 25/07/2017.
//  Copyright © 2017 YongJai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <opencv2/opencv.hpp>
#import <opencv2/imgcodecs/ios.h>

@interface ViewController : UIViewController{
    cv::Mat cvImage;
}

@property (weak, nonatomic) IBOutlet UIImageView *imageView;


@end

