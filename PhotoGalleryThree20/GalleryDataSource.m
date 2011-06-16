//
//  GalleryDataSource.m
//  PhotoGalleryThree20
//
//  Created by Phillip Verheyden on 6/15/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "GalleryDataSource.h"
#import "GalleryModel.h"
#import "Album.h"

@implementation GalleryDataSource

- (id)initWithCategory:(NSString *)category {
    if((self = [super init])) {
        self.model = [[GalleryModel alloc] initWithCategory:category];
    }
         
    return self;
}

- (void)tableViewDidLoadModel:(UITableView *)tableView {
    for (Album *album in [(GalleryModel *)self.model results]) {
        TTDPRINT(@"Album title: %@", album.title);
        TTTableSubtitleItem *item = [TTTableSubtitleItem itemWithText:album.title subtitle:album.description imageURL:album.coverThumb URL:nil];
        item.userInfo = album;
        [self.items addObject:item];
    }
}

@end
