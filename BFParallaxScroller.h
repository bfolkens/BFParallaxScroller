//
//  BFParallaxScroller.h
//  CamFind
//
//  Created by Bradford Folkens on 11/28/13.
//  Copyright (c) 2013 Image Searcher Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BFParallaxScroller : NSObject <UIScrollViewDelegate>
{
    UIScrollView *foregroundPlane;
    NSMutableArray *planes;
}

- (id)initWithForegroundScrollView:(UIScrollView *)scrollView;
- (void)addBackgroundPlaneWithDistance:(float)distance withScrollView:(UIScrollView *)scrollView;
- (void)scrollViewDidScroll:(UIScrollView *)scrollView;

@end
