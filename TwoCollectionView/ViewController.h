//
//  ViewController.h
//  TwoCollectionView
//
//  Created by JudeYou on 17/5/15.
//  Copyright (c) 2015年 HKNTV. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UICollectionViewDataSource, UICollectionViewDelegate, UIScrollViewDelegate>

@property (weak, nonatomic) IBOutlet UICollectionView *topCollectionView;

@property (weak, nonatomic) IBOutlet UICollectionView *btnCollectionView;


@end

