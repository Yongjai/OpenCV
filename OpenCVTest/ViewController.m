//
//  ViewController.m
//  OpenCVTest
//
//  Created by YongJai on 25/07/2017.
//  Copyright © 2017 YongJai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImage *image = [UIImage imageNamed:@"img.jpg"];
    UIImageToMat(image, cvImage);
    if(!cvImage.empty()){
        using namespace cv;
        Mat gray;
        cvtColor(cvImage, gray, CV_RGB2GRAY);//convert to single channel
        GaussianBlur(gray, gray, cvSize(5, 5),1.2,1.2);//remove small details
        
        Mat edges;
        Canny(gray, edges, 0, 100);  //윤곽선 인지
        cvImage.setTo(Scalar::all(255)); //배경화면 하얗게
        cvImage.setTo(Scalar::all(0),edges);//윤곽선 추가
        
        self.imageView.image=MatToUIImage(cvImage);
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
