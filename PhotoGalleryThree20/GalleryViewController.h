//
//  GalleryViewController.h
//  PhotoGalleryThree20
//
//  Created by Phillip Verheyden on 6/15/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface GalleryViewController : TTTableViewController {
    NSString *_category;
}

@property (nonatomic, copy) NSString *category;

- (id)initWithCategory:(NSString *)category;

@end
