//
//  BFParallaxScrollPlane.h
//  CamFind
//
//  Created by Bradford Folkens on 11/28/13.
//  Copyright (c) 2013 Image Searcher Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BFParallaxScrollPlane : NSObject
{
    CGAffineTransform initialOffsetTransform;
}

@property (nonatomic, retain) UIScrollView *scrollView;
@property (nonatomic, assign) float distance;

- (id)initWithDistance:(float)distance withScrollView:(UIScrollView *)scrollView;
- (void)setOffset:(CGPoint)offset;

@end
