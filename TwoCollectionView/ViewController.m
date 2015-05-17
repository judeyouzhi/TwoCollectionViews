//
//  ViewController.m
//  TwoCollectionView
//
//  Created by JudeYou on 17/5/15.
//  Copyright (c) 2015年 HKNTV. All rights reserved.
//

#import "ViewController.h"
#import "MyUICollectionViewFlowLayout.h"
#import "BtnUICollectionViewFlowLayout.h"
#import "TopCollectionViewCell.h"
#import "BottonCollectionViewCell.h"

@interface ViewController ()
@property (nonatomic, strong) NSArray *tops;
@property (nonatomic, strong) NSArray *bottons;
@property (nonatomic, strong) NSArray *sectionedBottons;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.topCollectionView.dataSource = self;
    self.topCollectionView.delegate = self;
    self.btnCollectionView.dataSource = self;
    self.btnCollectionView.delegate = self;
    self.tops = @[@"A", @"B", @"C", @"D"];
    NSArray *btns1 = @[@"1-1",@"1-2",@"1-3",@"1-4"];
    NSArray *btns2 = @[@"2-1",@"2-2",@"2-3",@"2-4"];
    NSArray *btns3 = @[@"3-1",@"3-2",@"3-3",@"3-4"];
    NSArray *btns4 = @[@"4-1",@"4-2",@"4-3",@"4-4"];
    self.sectionedBottons = @[btns1, btns2, btns3, btns4];
    self.bottons = btns1;
    // Do any additional setup after loading the view, typically from a nib.
    
    UINib *cellNib = [UINib nibWithNibName:@"TopCollectionViewCell" bundle:nil];
    [self.topCollectionView registerNib:cellNib forCellWithReuseIdentifier:@"TopCollectionViewCell"];
    MyUICollectionViewFlowLayout *flowLayout = [[MyUICollectionViewFlowLayout alloc] init];
    [self.topCollectionView setCollectionViewLayout:flowLayout];
    
    UINib *btnCellNib = [UINib nibWithNibName:@"BottonCollectionViewCell" bundle:nil];
    [self.btnCollectionView registerNib:btnCellNib forCellWithReuseIdentifier:@"BottonCollectionViewCell"];
    BtnUICollectionViewFlowLayout *btnflowLayout = [[BtnUICollectionViewFlowLayout alloc] init];
    [self.btnCollectionView setCollectionViewLayout:btnflowLayout];
    self.btnCollectionView.backgroundColor = [UIColor clearColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    if (collectionView == self.topCollectionView) {
        return [self.tops count];
    }else if (collectionView == self.btnCollectionView)
    {
        return [self.bottons count];
    }
    return 1;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    if (collectionView == self.topCollectionView) {
        
        NSString *data = [self.tops objectAtIndex:indexPath.row];
        
        static NSString *cellIdentifier = @"TopCollectionViewCell";
        
        TopCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:indexPath];
        //        cell.backgroundColor = [UIColor whiteColor];
        cell.title.text = data;
        return cell;
    }else if (collectionView == self.btnCollectionView)
    {
        NSString *data = [self.bottons objectAtIndex:indexPath.row];
        
        static NSString *cellIdentifier = @"BottonCollectionViewCell";
        
        BottonCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:indexPath];
        //        cell.backgroundColor = [UIColor whiteColor];
        cell.name.text = data;
        cell.layer.cornerRadius = 2.0f;
        return cell;
    }
    return nil;
}

#pragma --ScrollingView delegate

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    int index  = scrollView.contentOffset.x /375;
    self.bottons = self.sectionedBottons[index];
    [self.btnCollectionView reloadData];
}

@end
