//
//  ViewController.m
//  Segmented
//
//  Created by kunren10 on 2014/06/11.
//  Copyright (c) 2014年 Hajime Maeda. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

- (IBAction)selectSegmented:(UISegmentedControl *)sender;

@property (weak, nonatomic) IBOutlet UILabel *lbSegment;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// セグメンテッドコントロール値変更時
- (IBAction)selectSegmented:(UISegmentedControl *)sender {
    
    // ボタンのインデックス番号の取得 @property selectedSegmentIndex
    NSInteger idx = sender.selectedSegmentIndex;
    
    // ラベルの習得 メソッド titleForSegmentAtIndex 戻り値 NSString型になる
    NSString *str = [sender titleForSegmentAtIndex:idx];
    
    NSLog(@"%ld, %@", (long)sender.tag, str);
    
    self.lbSegment.text = str;
}

@end
