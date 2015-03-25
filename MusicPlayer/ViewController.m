//
//  ViewController.m
//  MusicPlayer
//
//  Created by Jamie Walker on 3/8/14.
//  Copyright (c) 2014 Jamie Walker. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

//    
//    RGTimer = nil;
//    WitnessTimer = nil;
//    WrittenTimer = nil;
//    SNTimer = nil;
//    BTimer = nil;
//    GTimer = nil;

    
    RGTimer = WitnessTimer = WrittenTimer = SNTimer = GTimer = BTimer = nil;
    
    
    shuffleRapGod = 367;
    shuffleSomeNights = 301;
    shuffleWitness = 232;
    shuffleGuessing = 180;
    shuffleBorn = 295;
    shuffleWritten = 184;
    

    
    
    
    randomm = arc4random() %5;

}
-(void)v{
    play.frame = CGRectMake(-100, -100, play.frame.size.width, play.frame.size.height);
    [self.view setNeedsDisplay];

}
-(void)viewDidAppear:(BOOL)animated{
    [self v];
}

-(void)rapGodSelector{
    shuffleRapGod = shuffleRapGod - 1;
    
    if (shuffleRapGod == 0) {
        [self shuffle];
        RGTimer = nil;
    }
}


-(void)rapGodTimer{
    if (RGTimer == nil) {
        RGTimer = [NSTimer scheduledTimerWithTimeInterval:1.0    // used for debug, fix to 1 time per sec later.
                                                   target:self
                                                 selector:@selector(rapGodSelector)
                                                 userInfo:nil
                                                  repeats:YES];
    }
    }

-(void)WrittenSelector{
            shuffleWritten = shuffleWritten - 1;
            
            if (shuffleWritten == 0) {
                [self shuffle];
                WrittenTimer = nil;
            }
        }
-(void)WrittenTimer{
            if (WrittenTimer == nil) {
                WrittenTimer = [NSTimer scheduledTimerWithTimeInterval:1.0    // used for debug, fix to 1 time per sec later.
                                                           target:self
                                                         selector:@selector(WrittenSelector)
                                                         userInfo:nil
                                                          repeats:YES];
                
            }
        }







-(void)WitnessSelector{
    shuffleWitness = shuffleWitness - 1;
                
    if (shuffleWitness == 0) {
        [self shuffle];
        WitnessTimer = nil;
                }
            }
-(void)WitnessTimer{
    if (WitnessTimer == nil) {
    WitnessTimer = [NSTimer scheduledTimerWithTimeInterval:1.0    // used for debug, fix to 1 time per sec later.
                                                    target:self
                                                  selector:@selector(WitnessSelector)
                                                  userInfo:nil
                                                   repeats:YES];
                    
        }
}
-(void)GuessingSelector{
        shuffleGuessing = shuffleGuessing - 1;
                    
        if (shuffleGuessing == 0) {
                [self shuffle];
                GTimer = nil;
        }
}
-(void)GuessingTimer{
    if (GTimer == nil) {
            GTimer = [NSTimer scheduledTimerWithTimeInterval:1.0    // used for debug, fix to 1 time per sec later.
                                                      target:self
                                                    selector:@selector(GuessingSelector)
                                                    userInfo:nil
                                                     repeats:YES];
                        
    }
}
-(void)BornSelector{
        shuffleBorn = shuffleBorn - 1;
                        
        if (shuffleBorn == 0) {
                [self shuffle];
                BTimer = nil;
        }
}
-(void)BornTimer{
    if (BTimer == nil) {
        BTimer = [NSTimer scheduledTimerWithTimeInterval:1.0    // used for debug, fix to 1 time per sec later.
                                                  target:self
                                                selector:@selector(BornSelector)
                                                userInfo:nil
                                                 repeats:YES];
                            
    }
}

-(void)SomeNightsSelector{
    shuffleSomeNights = shuffleSomeNights - 1;
    if (shuffleSomeNights == 0) {
        [self shuffle];
        BTimer = nil;
    }
}
-(void)SomeNightsTimer{
    if (SNTimer == nil) {
        SNTimer = [NSTimer scheduledTimerWithTimeInterval:1.0   // used for debug, fix to 1 time per sec later.
                                                   target:self
                                                 selector:@selector(SomeNightsSelector)
                                                 userInfo:nil
                                                  repeats:YES];
                                
    }
}


//g




-(IBAction)changeVolume
{
    NSLog(@"volume is %f", (volumeSlider.value*20));
    audio.volume = volumeSlider.value * 20;
   
}

-(IBAction)playMusic
{
    [audio play];
    play.hidden = YES;

}

-(IBAction)pauseMusic
{
    [audio pause];
    
    play.hidden = NO;

}


-(IBAction)stopMusic
{
    [audio stop];
    [audio prepareToPlay];
    audio.currentTime = 0.0f;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(IBAction)load1
{
    play.hidden = YES;

    NSString *path = [[NSBundle mainBundle] pathForResource:@"Eminem - Rap God [HQ &amp; Lyrics]" ofType:@"mp3"];
    NSURL *url = [NSURL fileURLWithPath:path];
    audio = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
    [audio prepareToPlay];
    [audio play];

    //volume
    volumeSlider.minimumValue = 0.0f;
    volumeSlider.maximumValue = 1.0f;
    volumeSlider.value = 0.5f;
}
-(IBAction)load2
{
    play.hidden = YES;

    NSString *path2 = [[NSBundle mainBundle] pathForResource:@"Tinie Tempah - Written In The Stars Remix" ofType:@"mp3"];
    NSURL *url2 = [NSURL fileURLWithPath:path2];
    audio = [[AVAudioPlayer alloc] initWithContentsOfURL:url2 error:nil];
    [audio prepareToPlay];
    [audio play];

    //volume for slider
    volumeSlider.minimumValue = 0.0f;
    volumeSlider.maximumValue = 1.0f;
    volumeSlider.value = 0.5f;
}
-(IBAction)load3
{
    play.hidden = YES;

    NSString *path3 = [[NSBundle mainBundle] pathForResource:@"MitiS - Born (feat. Collin McLoughlin) (Vocal Mix)" ofType:@"mp3"];
    NSURL *url3 = [NSURL fileURLWithPath:path3];
    audio = [[AVAudioPlayer alloc] initWithContentsOfURL:url3 error:nil];
    [audio prepareToPlay];
    [audio play];

    //volume for slider
    volumeSlider.minimumValue = 0.0f;
    volumeSlider.maximumValue = 1.0f;
    volumeSlider.value = 0.5f;
    
}

-(IBAction)load4
{
    play.hidden = YES;

    NSString *path4 = [[NSBundle mainBundle] pathForResource:@"Witness (feat  Veela)   Approaching Nirvana  Lyrics" ofType:@"mp3"];
    NSURL *url4 = [NSURL fileURLWithPath:path4];
    audio = [[AVAudioPlayer alloc] initWithContentsOfURL:url4 error:nil];
    [audio prepareToPlay];
    [audio play];
    
    //volume for slider
    volumeSlider.minimumValue = 0.0f;
    volumeSlider.maximumValue = 1.0f;
    volumeSlider.value = 0.5f;
    
}
-(IBAction)load5
{
    play.hidden = YES;

    NSString *path5 = [[NSBundle mainBundle] pathForResource:@"guessing" ofType:@"mp3"];
    NSURL *url5 = [NSURL fileURLWithPath:path5];
    audio = [[AVAudioPlayer alloc] initWithContentsOfURL:url5 error:nil];
    [audio prepareToPlay];
    [audio play];
    
    //volume for slider
    volumeSlider.minimumValue = 0.0f;
    volumeSlider.maximumValue = 1.0f;
    volumeSlider.value = 0.5f;
    NSLog(@"hi");
    
}
-(IBAction)load6
{
    play.hidden = YES;

    NSString *path6 = [[NSBundle mainBundle] pathForResource:@"Some Nights" ofType:@"mp3"];
    NSURL *url6 = [NSURL fileURLWithPath:path6];
    audio = [[AVAudioPlayer alloc] initWithContentsOfURL:url6 error:nil];
    [audio prepareToPlay];
    [audio play];
    
    //volume for slider
    volumeSlider.minimumValue = 0.0f;
    volumeSlider.maximumValue = 1.0f;
    volumeSlider.value = 0.5f;
    NSLog(@"hi");

    
}



-(IBAction)shuffle{
    
    
    randomm = random_number;
    random_number = arc4random () %10;
    
    NSLog(@"first log");
    if (randomm == 0){
        
        NSLog(@"second log");
        
        NSString *path = [[NSBundle mainBundle] pathForResource:@"Eminem - Rap God [HQ &amp; Lyrics]" ofType:@"mp3"];
        NSURL *url = [NSURL fileURLWithPath:path];
        audio = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
        [audio prepareToPlay];
        [audio play];
        
        [self rapGodTimer];
        
    }else if (randomm ==5){
        NSString *path = [[NSBundle mainBundle] pathForResource:@"Eminem - Rap God [HQ &amp; Lyrics]" ofType:@"mp3"];
        NSURL *url = [NSURL fileURLWithPath:path];
        audio = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
        [audio prepareToPlay];
        [audio play];
        
        
        [self rapGodTimer];
        
        
    }else if (randomm == 1 ){
        NSString *path2 = [[NSBundle mainBundle] pathForResource:@"Tinie Tempah - Written In The Stars Remix" ofType:@"mp3"];
        NSURL *url2 = [NSURL fileURLWithPath:path2];
        audio = [[AVAudioPlayer alloc] initWithContentsOfURL:url2 error:nil];
        [audio prepareToPlay];
        [audio play];
        
        [self WrittenTimer];
    }else if (randomm == 6 ){
        NSString *path2 = [[NSBundle mainBundle] pathForResource:@"Tinie Tempah - Written In The Stars Remix" ofType:@"mp3"];
        NSURL *url2 = [NSURL fileURLWithPath:path2];
        audio = [[AVAudioPlayer alloc] initWithContentsOfURL:url2 error:nil];
        [audio prepareToPlay];
        [audio play];
        
        [self WrittenTimer];
        
    }else if (randomm == 2){
        NSString *path3 = [[NSBundle mainBundle] pathForResource:@"MitiS - Born (feat. Collin McLoughlin) (Vocal Mix)" ofType:@"mp3"];
        NSURL *url3 = [NSURL fileURLWithPath:path3];
        audio = [[AVAudioPlayer alloc] initWithContentsOfURL:url3 error:nil];
        [audio prepareToPlay];
        [audio play];
        
        [self BornTimer];

        
    }else if (randomm == 7){
        NSString *path3 = [[NSBundle mainBundle] pathForResource:@"MitiS - Born (feat. Collin McLoughlin) (Vocal Mix)" ofType:@"mp3"];
        NSURL *url3 = [NSURL fileURLWithPath:path3];
        audio = [[AVAudioPlayer alloc] initWithContentsOfURL:url3 error:nil];
        [audio prepareToPlay];
        [audio play];
        [self BornTimer];

    
    
    
    }else if (randomm == 3){
        
        NSString *path4 = [[NSBundle mainBundle] pathForResource:@"Witness (feat  Veela)   Approaching Nirvana  Lyrics" ofType:@"mp3"];
        NSURL *url4 = [NSURL fileURLWithPath:path4];
        audio = [[AVAudioPlayer alloc] initWithContentsOfURL:url4 error:nil];
        [audio prepareToPlay];
        [audio play];
        
        [self WitnessTimer];
     
        
        
        
        
        
    }else if (randomm == 8){
        
        NSString *path4 = [[NSBundle mainBundle] pathForResource:@"Witness (feat  Veela)   Approaching Nirvana  Lyrics" ofType:@"mp3"];
        NSURL *url4 = [NSURL fileURLWithPath:path4];
        audio = [[AVAudioPlayer alloc] initWithContentsOfURL:url4 error:nil];
        [audio prepareToPlay];
        [audio play];
        
        [self WitnessTimer];

        
    }else if (randomm == 4){
        NSString *path5 = [[NSBundle mainBundle] pathForResource:@"guessing" ofType:@"mp3"];
        NSURL *url5 = [NSURL fileURLWithPath:path5];
        audio = [[AVAudioPlayer alloc] initWithContentsOfURL:url5 error:nil];
        [audio prepareToPlay];
        [audio play];
        
        [self GuessingTimer];
 
        
        
    }else if (randomm == 9){
        NSString *path5 = [[NSBundle mainBundle] pathForResource:@"guessing" ofType:@"mp3"];
        NSURL *url5 = [NSURL fileURLWithPath:path5];
        audio = [[AVAudioPlayer alloc] initWithContentsOfURL:url5 error:nil];
        [audio prepareToPlay];
        [audio play];
        
        [self GuessingTimer];
//        [self random];
//        [self shuffle];
//
//        
//    }else if (randomm == 6){
//        NSString *path6 = [[NSBundle mainBundle] pathForResource:@"Some Nights" ofType:@"mp3"];
//        NSURL *url6 = [NSURL fileURLWithPath:path6];
//        audio = [[AVAudioPlayer alloc] initWithContentsOfURL:url6 error:nil];
//        [audio prepareToPlay];
//        [audio play];
//        
//        
//        if (audio.playing){
//            
//        } else {
//            randomm = random_number;
//            random_number = arc4random () %10;
//            [self shuffle];
//        }
//        [self random];
//        [self shuffle];
//
//        
//        
//        
//    }else if (randomm == 11){
//        NSString *path6 = [[NSBundle mainBundle] pathForResource:@"Some Nights" ofType:@"mp3"];
//        NSURL *url6 = [NSURL fileURLWithPath:path6];
//        audio = [[AVAudioPlayer alloc] initWithContentsOfURL:url6 error:nil];
//        [audio prepareToPlay];
//        [audio play];
//        
//        if (audio.playing){
//            
//        } else {
//            randomm = random_number;
//            random_number = arc4random () %10;
//            [self shuffle];
//        }
//        [self random];
//        [self shuffle];
//
//        
    }
}
@end