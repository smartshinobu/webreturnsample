//
//  ViewController.m
//  Webreturnsample
//
//  Created by ビザンコムマック０７ on 2014/10/29.
//  Copyright (c) 2014年 mycompany. All rights reserved.
//

#import "ViewController.h"
#import "Webreturn.h"

@interface ViewController (){
    AVAudioPlayer *player;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    //URL「http://bjin.me/api/?type=rand&count=1&format=json」にあるJSONオブジェクト(今回はNSArray)格納
    NSArray *array = [Webreturn JSONArrayData:@"http://bjin.me/api/?type=rand&count=1&format=json"];
    //arrayの0番目の要素を格納
    NSDictionary *dic = [array objectAtIndex:0];
    //キー「thumb」の値(画像のURLを表す文字列)を格納
    NSString *imgurlstr = [dic objectForKey:@"thumb"];
    //imgurlstr先にある画像のデータを格納
    self.imageview.image = [Webreturn WebImage:imgurlstr];
    //URL「http://bizanshinobu.miraiserver.com/gekido.mp3」にある音楽データを格納
    NSData *musicdata = [Webreturn webdata:@"http://bizanshinobu.miraiserver.com/gekido.mp3"];
    //musiddataを元にplayerを初期化
    player = [[AVAudioPlayer alloc]initWithData:musicdata error:nil];
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//声を聞くというボタンを押すと呼ばれるメソッド
- (IBAction)voice:(id)sender {
    //playerが再生中であるか
    if (player.playing) {
        //再生位置時間0秒とする
        player.currentTime = 0.0;
    }else{
        //再生する
        [player play];
    }
}
@end
