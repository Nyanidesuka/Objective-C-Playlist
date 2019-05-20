//
//  HAJPlaylist.m
//  PlaylistObjC
//
//  Created by Haley Jones on 5/20/19.
//  Copyright © 2019 HaleyJones. All rights reserved.
//

#import "HAJPlaylist.h"

@interface HAJPlaylist()
@property (nonatomic, strong) NSMutableArray* internalSongs;
@end

@implementation HAJPlaylist

- (instancetype)initWithName:(NSString *)name songs:(NSArray *)songs
{
    self = [super init];
    if (self){
        _name = name;
        _internalSongs = [songs mutableCopy];
    }
    return self;
}

- (void)addSongsObject:(HAJSong *)object
{
    [self.internalSongs addObject:object];
}

-(void) removeSongsObject:(HAJSong *)object{
    [self.internalSongs removeObject:object];
}

-(NSArray *) songs
{
    return self.internalSongs;
}

@end
