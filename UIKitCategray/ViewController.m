//
//  ViewController.m
//  UIKitCategray
//
//  Created by chenq@kensence.com on 2018/3/21.
//  Copyright © 2018年 chenq@kensence.com. All rights reserved.
//

#import "ViewController.h"
#import "C_Label.h"
#import "UIView+Frame.h"
@interface ViewController ()<C_labelDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    C_Label *label = [[C_Label alloc]initWithFrame:CGRectMake(0, 100, 300, 100) withType:FitWidth];
    label.font = [UIFont systemFontOfSize:10];
    label.numberOfLines = 0;
    label.text = @"这擅自这是才这是才能擅自这";
    [label setContentMode:UIViewContentModeTop];
    label.textColor = [UIColor blackColor];
//    [label setLabelSpace:5 margionX:1];
    [self.view addSubview:label];
    
    
    C_Label *Tlabel = [[C_Label alloc]initWithFrame:CGRectMake(0, 200, 300, 100) withType:FitWidth];
    Tlabel.font = [UIFont systemFontOfSize:10];
    Tlabel.numberOfLines = 2;
    Tlabel.text = @"这擅自这是才这是才能擅自这是才这这擅自这是才这是才能擅自这是才这这擅自这是才这是才能擅自这是才这这擅自这是才这是才能擅自这是才这";
    [Tlabel setContentMode:UIViewContentModeTop];
    Tlabel.textColor = [UIColor blackColor];
    //    [label setLabelSpace:5 margionX:1];
    [self.view addSubview:Tlabel];
    
    
    
    
    C_Label *Blabel = [[C_Label alloc]initWithFrame:CGRectMake(0, 300, 300, 100) withType:FitWidth];
    Blabel.font = [UIFont systemFontOfSize:10];
    Blabel.numberOfLines = 3;
    Blabel.text = @"这擅自这是才这是才能擅自这是才这这擅自这是才这是才能擅自这是才这这擅自这是才这是才能擅自这是才这这擅自这是才这是才能擅自这是才这";
    [Blabel setContentMode:UIViewContentModeTop];
    Blabel.textColor = [UIColor blackColor];
        [Blabel setLabelSpace:10 margionX:1.5];
    [self.view addSubview:Blabel];
    
    
    
    
    C_Label *Clabel = [[C_Label alloc]initWithFrame:CGRectMake(0, 400, 300, 100) withType:FitWidth];
    Clabel.font = [UIFont systemFontOfSize:10];
    Clabel.numberOfLines = 0;
    Clabel.text = @"这擅自这是才这是才能擅自这是才这这擅自这是才这是才能擅自这是才这这擅自这是才这是才能擅自这是才这这擅自这是才这是才能擅自这是才这";
    [Clabel setContentMode:UIViewContentModeTop];
    Clabel.textColor = [UIColor blackColor];
        [Clabel setLabelSpace:15 margionX:4];
    [self.view addSubview:Clabel];
    
    
    
    C_Label *Xlabel = [[C_Label alloc]initWithFrame:CGRectMake(0, 500, 300, 100) withType:FitWidth];
    Xlabel.font = [UIFont systemFontOfSize:10];
    Xlabel.numberOfLines = 0;
    Xlabel.text = @"这擅自这是才这是才能擅自这是才这这擅自这是才这是才能擅自这是才这这擅自这是才这是才能擅自这是才这这擅自这是才这是才能擅自这是才这";
    [Xlabel setContentMode:UIViewContentModeTop];
    Xlabel.textColor = [UIColor blackColor];
    //    [label setLabelSpace:5 margionX:1];
    [self.view addSubview:Xlabel];
    
    label.delegate = self;

    label.Block = ^(UILabel *label) {
        NSLog(@"点击++++");
    };
    
    [self.view addSubview:label];
    NSLog(@"***********");
}


-(void)ClickLabel:(UILabel *)label
{
    NSLog(@"点击了");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
