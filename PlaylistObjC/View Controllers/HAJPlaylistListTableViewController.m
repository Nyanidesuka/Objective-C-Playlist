//
//  HAJPlaylistListTableViewController.m
//  PlaylistObjC
//
//  Created by Haley Jones on 5/20/19.
//  Copyright © 2019 HaleyJones. All rights reserved.
//

#import "HAJPlaylistListTableViewController.h"
#import "HAJPlaylistController.h"
#import "HAJDetailTableViewController.h"
#import "HAJPlaylist.h"

@interface HAJPlaylistListTableViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

@end

@implementation HAJPlaylistListTableViewController

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [[[HAJPlaylistController sharedController] playlists] count];
}

- (IBAction)addButtonTapped:(UIBarButtonItem *)sender {
    [[HAJPlaylistController sharedController] createPlaylistWithName:self.nameTextField.text];
    [self.tableView reloadData];
    self.nameTextField.text = @"";
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"playlistCell" forIndexPath:indexPath];
    
    HAJPlaylist *playlist = [[[HAJPlaylistController sharedController]playlists]objectAtIndex:indexPath.row];
    
    cell.textLabel.text = [playlist name];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%lu songs", playlist.songs.count];
    
    
    
    return cell;
}

// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:(@"toExistingPlaylist")]){
        NSIndexPath *indexPath = self.tableView.indexPathForSelectedRow;
        HAJDetailTableViewController *destinationVC = [segue destinationViewController];
        HAJPlaylist *playlist = [[[HAJPlaylistController sharedController] playlists] objectAtIndex:indexPath.row];
        destinationVC.playlist = playlist;
    }
}


@end
