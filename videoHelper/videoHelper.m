//
//  slideHelper.m
//  mundipharma
//
//  Created by Sergio Quintero Gómez on 8/13/13.
//  Copyright (c) 2013 Sergio Quintero Gómez. All rights reserved.
//
// Agregar el MediaPlayer.framework

#import "videoHelper.h"
#import <MediaPlayer/MediaPlayer.h>

@implementation videoHelper

@synthesize videoFormat;
@synthesize videoControls;
@synthesize video;
-(void) setParams:(NSString *)formatVideo andControls:(BOOL) hasControls {
    videoFormat = formatVideo;
    videoControls = hasControls;
}

-(id)init {
    self = [super init];
    if (self) {
        [self setParams:@"mp4" andControls:NO];
    }
    return self;
}
-(id)initWithFormat:(NSString *)formatVideo {
    self = [super init];
    if (self) {
        [self setParams:formatVideo andControls:NO];
    }
    return self;
}
-(id)initWithControlsFormat:(NSString *)formatVideo {
    self = [super init];
    if (self) {
        [self setParams:formatVideo andControls:YES];
    }
    return self;
}

// Crea la vista contenedora
-(UIView *)createContainerView:(UIView *)currentView  {
    CGRect fullscreenSize = [self fixWidthIfNecessary:currentView.frame.size];
    UIView *containerView = [[UIView alloc]initWithFrame:fullscreenSize];
    [currentView addSubview:containerView];
    return containerView;
}

-(void)putVideoInViewcontroller:(UIViewController *)currentView andVideo:(NSString *)videoName {
    video = [self getVideoWithName:videoName];
    UIView *containerView = [self createContainerView:currentView.view];
    // Set up frame
    video.view.frame = containerView.frame;
    // set up controls
    if (!videoControls) {
        video.controlStyle =  MPMovieControlStyleNone;
    }
    else {
        video.controlStyle =  MPMovieControlModeDefault;
    }
    // addSubview
    [containerView addSubview:video.view];
    [video play];
    
}

-(MPMoviePlayerController *) getVideoWithName:(NSString *)videoName {
    NSBundle *bundle = [NSBundle mainBundle];
    NSString *movie = [bundle pathForResource:videoName ofType:videoFormat];
    NSURL *movieUrl = [NSURL fileURLWithPath:movie];
    return [[MPMoviePlayerController alloc] initWithContentURL:movieUrl];
}

- (CGRect) fixWidthIfNecessary:(CGSize)square {
    if (square.height > square.width) {
        return CGRectMake(0, 0, square.height, square.width);
    }
    else {
        return CGRectMake(0, 0, square.width, square.height);
    }
}

@end
