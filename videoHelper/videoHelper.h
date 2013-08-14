//
//  slideHelper.h
//  mundipharma
//
//  Created by Sergio Quintero Gómez on 8/13/13.
//  Copyright (c) 2013 Sergio Quintero Gómez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MediaPlayer/MediaPlayer.h>

@interface videoHelper : NSObject
-(id)init;
-(id)initWithFormat:(NSString *)formatVideo;
-(void)putVideoInViewcontroller:(UIViewController *)currentView andVideo:(NSString *)videoName;
@property (copy, nonatomic) NSString * videoFormat;
@property (nonatomic) BOOL videoControls;
@property (weak, nonatomic) UIViewController* videoView;
@property (strong) MPMoviePlayerController *video;

@end
