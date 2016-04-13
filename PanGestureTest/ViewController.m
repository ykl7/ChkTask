//
//  ViewController.m
//  PanGestureTest
//
//  Created by YASH on 14/04/16.
//  Copyright © 2016 YASH. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    CGPoint initialCenterOne;
    CGPoint initialCenterTwo;
    CGPoint initialCenterThree;
    CGPoint initialCenterFour;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIPanGestureRecognizer *panOne = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(movePanOne:)];
    [self.viewOne addGestureRecognizer:panOne];
    UIPanGestureRecognizer *panTwo = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(movePanTwo:)];
    [self.viewTwo addGestureRecognizer:panTwo];
    UIPanGestureRecognizer *panThree = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(movePanThree:)];
    [self.viewThree addGestureRecognizer:panThree];
    UIPanGestureRecognizer *panFour = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(movePanFour:)];
    [self.viewFour addGestureRecognizer:panFour];
    
    initialCenterOne = self.viewOne.center;
    initialCenterTwo = self.viewTwo.center;
    initialCenterThree = self.viewThree.center;
    initialCenterFour = self.viewFour.center;
    
    [_finishLabel setText:@"Game On"];
    
}

- (void) movePanOne: (UIGestureRecognizer *) panGesture
{
    CGPoint touchPoint = [panGesture locationInView:self.view];
    self.viewOne.center = touchPoint;
    if (panGesture.state == UIGestureRecognizerStateEnded)
    {
        CGRect boundsA = [_viewOne convertRect:_viewOne.bounds toView:nil];
        CGRect boundsB = [_btnOne convertRect:_btnOne.bounds toView:nil];
        if (CGRectIntersectsRect(boundsA, boundsB))
        {
            [_btnOne setHidden:YES];
            [_viewOne setHidden:YES];
            if (_btnFour.hidden && _btnThree.hidden && _btnTwo.hidden && _btnOne)
            {
                [_finishLabel setText:@"Finished!"];
            }
        }
        else
        {
            [UIView animateWithDuration:2.5 animations:^{
                self.viewOne.center = initialCenterOne;
            }];
        }
    }
}

- (void) movePanTwo: (UIGestureRecognizer *) panGesture
{
    CGPoint touchPoint = [panGesture locationInView:self.view];
    self.viewTwo.center = touchPoint;
    if (panGesture.state == UIGestureRecognizerStateEnded)
    {
        CGRect boundsA = [_viewTwo convertRect:_viewTwo.bounds toView:nil];
        CGRect boundsB = [_btnTwo convertRect:_btnTwo.bounds toView:nil];
        if (CGRectIntersectsRect(boundsA, boundsB))
        {
            [_btnTwo setHidden:YES];
            [_viewTwo setHidden:YES];
            if (_btnFour.hidden && _btnThree.hidden && _btnTwo.hidden && _btnOne)
            {
                [_finishLabel setText:@"Finished!"];
            }
        }
        else
        {
            [UIView animateWithDuration:2.5 animations:^{
                self.viewTwo.center = initialCenterTwo;
            }];
        }
    }
}

- (void) movePanThree: (UIGestureRecognizer *) panGesture
{
    CGPoint touchPoint = [panGesture locationInView:self.view];
    self.viewThree.center = touchPoint;
    if (panGesture.state == UIGestureRecognizerStateEnded)
    {
        CGRect boundsA = [_viewThree convertRect:_viewThree.bounds toView:nil];
        CGRect boundsB = [_btnThree convertRect:_btnThree.bounds toView:nil];
        if (CGRectIntersectsRect(boundsA, boundsB))
        {
            [_btnThree setHidden:YES];
            [_viewThree setHidden:YES];
            if (_btnFour.hidden && _btnThree.hidden && _btnTwo.hidden && _btnOne)
            {
                [_finishLabel setText:@"Finished!"];
            }
        }
        else
        {
            [UIView animateWithDuration:2.5 animations:^{
                self.viewThree.center = initialCenterThree;
            }];
        }
    }
}

- (void) movePanFour: (UIGestureRecognizer *) panGesture
{
    CGPoint touchPoint = [panGesture locationInView:self.view];
    self.viewFour.center = touchPoint;
    if (panGesture.state == UIGestureRecognizerStateEnded)
    {
        CGRect boundsA = [_viewFour convertRect:_viewFour.bounds toView:nil];
        CGRect boundsB = [_btnFour convertRect:_btnFour.bounds toView:nil];
        if (CGRectIntersectsRect(boundsA, boundsB))
        {
            [_btnFour setHidden:YES];
            [_viewFour setHidden:YES];
            if (_btnFour.hidden && _btnThree.hidden && _btnTwo.hidden && _btnOne)
            {
                [_finishLabel setText:@"Finished!"];
            }
        }
        else
        {
            [UIView animateWithDuration:2.5 animations:^{
                self.viewFour.center = initialCenterFour;
            }];
        }
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
