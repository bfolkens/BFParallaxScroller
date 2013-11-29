//
//  BFParallaxScroller.m
//  CamFind
//
//  Created by Bradford Folkens on 11/28/13.
//  Copyright (c) 2013 Image Searcher Inc. All rights reserved.
//

#import "BFParallaxScroller.h"
#import "BFParallaxScrollPlane.h"

@implementation BFParallaxScroller

- (id)initWithForegroundScrollView:(UIScrollView *)scrollView
{
    self = [super init];
    if (self) {
        planes = [NSMutableArray arrayWithCapacity:0];
        
        foregroundPlane = scrollView;
        [foregroundPlane setDelegate:self];
    }
    
    return self;
}

- (void)addBackgroundPlaneWithDistance:(float)distance withScrollView:(UIScrollView *)scrollView
{
    [planes addObject:[[BFParallaxScrollPlane alloc] initWithDistance:distance withScrollView:scrollView]];
}

- (void)dealloc
{
    [foregroundPlane setDelegate:nil];
}

#pragma mark UIScrollViewDelegate implementation

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    for(BFParallaxScrollPlane *plane in planes) {
        CGPoint offset = CGPointMake([scrollView contentOffset].x / [plane distance],
                                     [scrollView contentOffset].y / [plane distance]);
        [plane setOffset:offset];
    }
}

@end
