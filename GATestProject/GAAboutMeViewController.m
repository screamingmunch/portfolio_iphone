//
//  GAAboutMeViewController.m
//  GATestProject
//
//  Created by Kristine on 4/12/14.
//  Copyright (c) 2014 Test. All rights reserved.
//

#import "GAAboutMeViewController.h"    

@interface GAAboutMeViewController ()

@end

@implementation GAAboutMeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad  //anything view related
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    CGFloat contentHeight = self.textView.frame.origin.y + self.textView.frame.size.height;
    
    self.scrollView.contentSize = CGSizeMake(self.view.frame.size.width, contentHeight + 30);
    
    //self.scrollView.contentSize = CGSizeMake(self.view.frame.size.width, self.view.frame.size.height + 30);
    
    // setting the contentSize (plain ol data) property
    
//    self.profileImage.layer.borderWidth = 5.0;
//    self.profileImage.layer.borderColor = [UIColor redColor].CGColor;
    self.profileImage.layer.cornerRadius = 85;
    self.profileImage.layer.masksToBounds = YES;
    //set the border around profileImage
    
    self.profileImage.frame = CGRectMake(
        self.profileImage.frame.origin.x - 500,
        self.profileImage.frame.origin.y,
        self.profileImage.frame.size.width,
        self.profileImage.frame.size.height);
    self.profileImage.alpha = 0.1;

}

- (void) viewDidAppear:(BOOL)animated
{
    [UIView animateWithDuration:0.5
                     animations:^{
        self.profileImage.frame = CGRectMake(
        self.profileImage.frame.origin.x + 500,
        self.profileImage.frame.origin.y,
        self.profileImage.frame.size.width,
        self.profileImage.frame.size.height);
                         self.profileImage.alpha = 1;
                     }];
}

//- (void) viewDidDisapper:(BOOL)animated
//{
//    [UIView animateWithDuration:0.5
//                     animations:^{
//          self.profileImage.frame = CGRectMake(
//          self.profileImage.frame.origin.x - 500,
//          self.profileImage.frame.origin.y,
//          self.profileImage.frame.size.width,
//          self.profileImage.frame.size.height);
//          self.profileImage.alpha = 1;
//                     }];
//}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
