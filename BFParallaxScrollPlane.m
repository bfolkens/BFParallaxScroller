//
//  BFParallaxScrollPlane.m
//  CamFind
//
//  Created by Bradford Folkens on 11/28/13.
//  Copyright (c) 2013 Image Searcher Inc. All rights reserved.
//

#import "BFParallaxScrollPlane.h"

@implementation BFParallaxScrollPlane

- (id)initWithDistance:(float)distance withScrollView:(UIScrollView *)scrollView
{
    self = [super init];
    if (self) {
        self.distance = distance;
        self.scrollView = scrollView;
        
        initialOffsetTransform = CGAffineTransformMakeTranslation([[self scrollView] contentOffset].x, [[self scrollView] contentOffset].y);
    }
    
    return self;
}

- (void)setOffset:(CGPoint)offset
{
    [[self scrollView] setContentOffset:CGPointApplyAffineTransform(offset, initialOffsetTransform) animated:NO];
}

@end
