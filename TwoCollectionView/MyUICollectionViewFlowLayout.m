//
//  MyUICollectionViewFlowLayout.m
//  TwoCollectionView
//
//  Created by JudeYou on 17/5/15.
//  Copyright (c) 2015年 HKNTV. All rights reserved.
//

#import "MyUICollectionViewFlowLayout.h"

@implementation MyUICollectionViewFlowLayout


- (id)init
{
    if (!(self = [super init])) return nil;
    
    self.itemSize = CGSizeMake(375, 375);
    self.sectionInset = UIEdgeInsetsMake(0, 0, 0, 0);
    self.minimumInteritemSpacing = 0.0f;
    self.minimumLineSpacing = 0.0f;
    self.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    
    return self;
}

@end
