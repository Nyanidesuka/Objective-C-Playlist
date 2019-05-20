//
//  HAJDetailTableViewController.h
//  PlaylistObjC
//
//  Created by Haley Jones on 5/20/19.
//  Copyright © 2019 HaleyJones. All rights reserved.
//

#import <UIKit/UIKit.h>
@class HAJPlaylist;
NS_ASSUME_NONNULL_BEGIN

@interface HAJDetailTableViewController : UITableViewController

@property (nonatomic, strong) HAJPlaylist *playlist;

@end

NS_ASSUME_NONNULL_END
