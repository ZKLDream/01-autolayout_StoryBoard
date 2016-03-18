//
//  ViewController.m
//  01-autolayout_StoryBoard
//
//  Created by 千锋 on 16/3/18.
//  Copyright © 2016年 千锋. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *Top;

@property (weak,nonatomic)IBOutlet NSLayoutConstraint *top2;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    
    
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
 //   self.Top.constant=self.Top.constant+100;
    [UIView animateWithDuration:0.4 animations:^{
        self.Top.constant=self.view.frame.size.height-300;
        //如果想要使用动画效果改变约束的值，必须在动画中加上这句代码
        
        [self.view layoutIfNeeded];
        
    }completion:^(BOOL finished) {
        [UIView animateWithDuration:0.4 animations:^{
            self.Top.constant=20;
            [self.view layoutIfNeeded];
        
        
        
    
    }];

}];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
