//
//  HAJPlaylistController.h
//  PlaylistObjC
//
//  Created by Haley Jones on 5/20/19.
//  Copyright © 2019 HaleyJones. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HAJPlaylist.h"
#import "HAJSong.h"

NS_ASSUME_NONNULL_BEGIN


@interface HAJPlaylistController : NSObject

@property (nonatomic, strong, readonly) NSArray* playlists;

+ (HAJPlaylistController *) sharedController;

//Create
- (void) createPlaylistWithName:(NSString*) name;

//Delete
- (void) deletePlaylist:(HAJPlaylist*) name;

//Add song to a playlist
- (void) addSongWithTitle:(NSString*)title andArtist:(NSString*)artist toPlaylist:(HAJPlaylist*)playlist;

//Remove song
- (void) removeSong:(HAJSong*)song fromPlaylist:(HAJPlaylist*)playlist;

@end

NS_ASSUME_NONNULL_END
