//
//  HAJPlaylist.h
//  PlaylistObjC
//
//  Created by Haley Jones on 5/20/19.
//  Copyright © 2019 HaleyJones. All rights reserved.
//

#import <Foundation/Foundation.h>

@class HAJSong;

NS_ASSUME_NONNULL_BEGIN

@interface HAJPlaylist : NSObject

@property (nonatomic, copy) NSString* name;
@property (nonatomic, strong, readonly) NSArray* songs;

- (instancetype) initWithName:(NSString*)name songs:(NSArray*)songs;

- (void) addSongsObject:(HAJSong *)object;
-(void) removeSongsObject:(HAJSong *)object;

@end

NS_ASSUME_NONNULL_END
