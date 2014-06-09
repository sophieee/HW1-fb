//
//  MainViewController.m
//  HW1 fb
//
//  Created by Sophie Tang on 6/8/14.
//  Copyright (c) 2014 Sophie Tang. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@property (weak, nonatomic) IBOutlet UIView *FeedView;
@property (weak, nonatomic) IBOutlet UIImageView *FeedImage;
@property (weak, nonatomic) IBOutlet UIButton *Like;
@property (assign) BOOL isLikeSelected;


- (IBAction)OnTap:(id)sender;
- (IBAction)Like:(id)sender;
- (IBAction)Dislike:(id)sender;


@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.FeedView.layer.cornerRadius = 3;
    self.FeedView.layer.shadowColor = [UIColor blackColor].CGColor;
    self.FeedView.layer.shadowOffset = CGSizeMake(0, 0);
    self.FeedView.layer.shadowOpacity = 0.2;
    self.FeedView.layer.shadowRadius = 1;
    
    self.FeedImage.layer.shadowColor = [UIColor blackColor].CGColor;
    self.FeedImage.layer.shadowOffset = CGSizeMake(1, 1);
    self.FeedImage.layer.shadowOpacity = 0.2;
    self.FeedImage.layer.shadowRadius = 1;
    
    self.isLikeSelected = NO;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)Like:(id)sender {
    if (self.isLikeSelected == NO) {
        self.Like.selected = YES;
        self.isLikeSelected = YES;
    }
    else {
        self.Like.selected = NO;
        self.isLikeSelected = NO;
    }
}

- (IBAction)OnTap:(id)sender {
    [self.view endEditing:YES];
}

@end
