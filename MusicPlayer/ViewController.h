//
//  ViewController.h
//  MusicPlayer
//
//  Created by Jamie Walker on 3/8/14.
//  Copyright (c) 2014 Jamie Walker. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController
{
    IBOutlet UISlider *volumeSlider;
    AVAudioPlayer *audio;
    IBOutlet UIButton *play;
    int randomm;
    
    NSArray *number [6];
    int random_number;
    int shuffleNumber;
    NSTimer *timer;
    
    
    int shuffleRapGod;
    int shuffleSomeNights;
    int shuffleWitness;
    int shuffleBorn;
    int shuffleGuessing;
    int shuffleWritten;
    NSTimer *RGTimer;
    NSTimer *SNTimer;
    NSTimer *WitnessTimer;
    NSTimer *BTimer;
    NSTimer *GTimer;
    NSTimer *WrittenTimer;
    
    
    
    
    
}




-(IBAction)playMusic;
-(IBAction)pauseMusic;
-(IBAction)stopMusic;
-(IBAction)load1;
-(IBAction)load2;
-(IBAction)load3;
-(IBAction)load4;
-(IBAction)load5;
-(IBAction)load6;
-(IBAction)load7;
-(IBAction)playAll;
-(IBAction)shuffle;



@end