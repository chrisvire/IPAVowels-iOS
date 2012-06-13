//
//  BVViewController.m
//  IPAVowelChart
//
//  Created by Chris Hubbard on 6/12/12.
//  Copyright (c) 2012 Blue Vire. All rights reserved.
//

#import "BVViewController.h"
#import <AudioToolbox/AudioToolbox.h>

@interface BVViewController ()

@end

@implementation BVViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return ((interfaceOrientation == UIInterfaceOrientationPortrait) || (interfaceOrientation == UIInterfaceOrientationPortraitUpsideDown)) ? YES : NO;
}

- (IBAction)vowelPressed:(UIButton *)sender
{
    NSString *soundName = [NSString stringWithFormat:@"V1-%0.2d", [sender tag]];
    NSString *soundPath = [[NSBundle mainBundle] pathForResource:soundName ofType:@"caf"];
    
    SystemSoundID soundID;
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)[NSURL fileURLWithPath: soundPath], &soundID);
    AudioServicesPlaySystemSound (soundID);
}
@end
