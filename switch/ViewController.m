//
//  ViewController.m
//  switch
//
//  Created by Ajeet N on 08/06/16.
//  Copyright © 2016 AhexTech. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIButton *radiusIconButton;
    UISlider *sliderinView ;
    UILabel *radiusDisplayLabel;
    UIView *customView;
    UILabel *reshapeTextLabel;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    customView = [[UIView alloc]initWithFrame:CGRectMake(30, 50, 120, 100)];
    [customView setBackgroundColor:[UIColor whiteColor]];
    customView.layer.cornerRadius=15.0;
    [self.view addSubview:customView];
    
    
    
    
    
    reshapeTextLabel = [[UILabel alloc]initWithFrame:CGRectMake(10,5, 180, 30)];
    [reshapeTextLabel setFont:[UIFont fontWithName:@"Helvetica-Neue" size:5.0f]];
    
    [reshapeTextLabel setText:@"Radius Value"];
    [customView addSubview:reshapeTextLabel];
    
    
    
    
    sliderinView = [[UISlider alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(reshapeTextLabel.frame)+5, 80, 30)];
    [sliderinView setMinimumValue:20];
    [sliderinView setMaximumValue:80];
    [sliderinView setValue:42 animated:YES];
    
    [sliderinView addTarget:self action:@selector(sliderinViewAction) forControlEvents:UIControlEventTouchUpInside];
    [customView addSubview:sliderinView];
    
    
    
    
    
    radiusDisplayLabel= [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(sliderinView.frame)+5,40, 30, 30)];
    [radiusDisplayLabel setText:[NSString stringWithFormat:@"%d",42]];
    
    [customView addSubview:radiusDisplayLabel];
    
    

    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)swichaction:(id)sender {
    
    if ([sender isOn]) {
            customView.hidden=NO;
            reshapeTextLabel.hidden=NO;
            sliderinView.hidden=NO;
            radiusDisplayLabel.hidden=NO;
    }
    else
    {
        
        customView.hidden=YES;
        reshapeTextLabel.hidden=YES;
        sliderinView.hidden=YES;
        radiusDisplayLabel.hidden=YES;
        

    }
    
    
}

@end
