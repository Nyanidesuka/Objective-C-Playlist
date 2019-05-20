//
//  HAJPlaylistController.m
//  PlaylistObjC
//
//  Created by Haley Jones on 5/20/19.
//  Copyright © 2019 HaleyJones. All rights reserved.
//

#import "HAJPlaylistController.h"

@interface HAJPlaylistController()

@property (nonatomic, strong, readonly) NSMutableArray* internalPlaylists;

@end

@implementation HAJPlaylistController

+ (HAJPlaylistController*)sharedController
{
    static HAJPlaylistController *sharedController = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedController = [HAJPlaylistController new];
    });
    return sharedController;
}

- (instancetype)init
{
    self = [super init];
    if (self){
        _internalPlaylists = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)createPlaylistWithName:(NSString *)name
{
    HAJPlaylist *newPlaylist = [[HAJPlaylist alloc] initWithName:name songs:[NSMutableArray new]];
    [self.internalPlaylists addObject:newPlaylist];
}

- (void)deletePlaylist:(HAJPlaylist *)name
{
    [self.internalPlaylists removeObject:name];
}

- (void)addSongWithTitle:(NSString *)title andArtist:(NSString *)artist toPlaylist:(HAJPlaylist *)playlist
{
    HAJSong *newSong = [[HAJSong alloc] initWithTitle:title artist:artist];
    [playlist addSongsObject:newSong];
}

-(void) removeSong:(HAJSong*)song fromPlaylist:(HAJPlaylist*)playlist
{
    [playlist removeSongsObject:song];
}

- (NSArray*)playlists
{
    return self.internalPlaylists;
}
@end
