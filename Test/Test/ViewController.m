//
//  ViewController.m
//  Test
//
//  Created by Cogitate/Grish on 04/03/15.
//  Copyright (c) 2015 Cogitate. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self PresentView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)PresentView
{
    [UIView animateWithDuration:1.0
                     animations:^{
                         CATransition *animation = [CATransition animation];
                         [animation setDelegate:self];
                         [animation setDuration:0.7];
                         [animation setTimingFunction:UIViewAnimationCurveEaseInOut];
                         animation.type = @"pageCurl";
                         animation.fillMode = kCAFillModeForwards;
                         animation.endProgress = 0.65;
                         [animation setRemovedOnCompletion:NO];
                         //[self.view.layer addAnimation:animation forKey:@"pageCurlAnimation"];
                         //[self.view addSubview:self];
                         ;}
     ];
}

-(void)HideHelpView
{
    [UIView animateWithDuration:1.0
                     animations:^{
                         CATransition *animation = [CATransition animation];
                         [animation setDelegate:self];
                         [animation setDuration:0.7];
                         [animation setTimingFunction:UIViewAnimationCurveEaseInOut];
                         animation.type = @"pageUnCurl";
                         animation.fillMode = kCAFillModeForwards;
                         animation.startProgress = 0.35;
                         [animation setRemovedOnCompletion:NO];
                         [self.view.layer addAnimation:animation forKey:@"pageUnCurlAnimation"];
                         [self.view removeFromSuperview];
                         
                         ;}
     ];
    
}

@end
