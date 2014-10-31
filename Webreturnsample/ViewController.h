//
//  ViewController.h
//  Webreturnsample
//
//  Created by ビザンコムマック０７ on 2014/10/29.
//  Copyright (c) 2014年 mycompany. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <AudioToolbox/AudioToolbox.h>


@interface ViewController : UIViewController
//UIImageViewのプロパティ
@property (weak, nonatomic) IBOutlet UIImageView *imageview;
//声を聞くというボタンを押すと呼ばれるメソッド
- (IBAction)voice:(id)sender;

@end

