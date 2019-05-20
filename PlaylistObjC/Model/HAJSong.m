//
//  HAJSong.m
//  PlaylistObjC
//
//  Created by Haley Jones on 5/20/19.
//  Copyright © 2019 HaleyJones. All rights reserved.
//

#import "HAJSong.h"

@implementation HAJSong

- (instancetype)initWithTitle:(NSString *)title artist:(NSString *)artist;
{
    self = [super init];
    if (self) {
        _title = title;
        _artist = artist;
    }
    return self;
}

@end
