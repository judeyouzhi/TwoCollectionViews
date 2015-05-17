//
//  BtnUICollectionViewFlowLayout.m
//  TwoCollectionView
//
//  Created by JudeYou on 17/5/15.
//  Copyright (c) 2015年 HKNTV. All rights reserved.
//

#import "BtnUICollectionViewFlowLayout.h"

@implementation BtnUICollectionViewFlowLayout

- (id)init
{
    if (!(self = [super init])) return nil;
    
    self.itemSize = CGSizeMake(175, 268);
    self.sectionInset = UIEdgeInsetsMake(2, 2, 2, 2);
    self.minimumInteritemSpacing = 0.0f;
    self.minimumLineSpacing = 2.0f;
    self.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    
    return self;
}


@end
