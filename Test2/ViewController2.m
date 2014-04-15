//
//  ViewController2.m
//  Test2
//
//  Created by Christophe Olivier on 11/04/2014.
//  Copyright (c) 2014 tof. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()
@property (weak, nonatomic) IBOutlet UIImageView *bri1;
@property (weak, nonatomic) IBOutlet UIImageView *bri2;
@property (weak, nonatomic) IBOutlet UIImageView *bri3;
@property (weak, nonatomic) IBOutlet UIImageView *bri4;
@property (weak, nonatomic) IBOutlet UIImageView *bri11;
@property (weak, nonatomic) IBOutlet UIImageView *bri12;
@property (weak, nonatomic) IBOutlet UIImageView *bri13;
@property (weak, nonatomic) IBOutlet UIImageView *bri14;
@property (weak, nonatomic) IBOutlet UILabel *MessCB;
@property (weak, nonatomic) IBOutlet UIImageView *balle;
@property (weak, nonatomic) IBOutlet UIImageView *raquette;
@end

@implementation ViewController2

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"background.png"]];
    vitesseBalle = CGPointMake(10,15);
    debut = 0;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)lancerCB:(id)sender {
    _MessCB.textAlignment = NSTextAlignmentCenter;
    timer1 = [NSTimer scheduledTimerWithTimeInterval:0.05 target:self selector:@selector(boucleCB) userInfo:nil repeats:YES];
}

-(void) boucleCB
{
    if (debut == 0)
    {
        debut = 1;
        return;
    }
    debut++;
    if (debut < 10) { return; }
    if (debut == 10)
    {
        NSString *lemessage = [[NSString alloc] initWithFormat:@"3"];
        _MessCB.text = lemessage;
        return;
    }
    if (debut < 20) { return; }
    if (debut == 20)
    {
        NSString *lemessage = [[NSString alloc] initWithFormat:@"2"];
        _MessCB.text = lemessage;
        return;
    }
    if (debut < 30) { return; }
    if (debut == 30)
    {
        NSString *lemessage = [[NSString alloc] initWithFormat:@"1"];
        _MessCB.text = lemessage;
        return;
    }
    if (debut < 40) { return; }
    if (debut == 40)
    {
        NSString *lemessage = [[NSString alloc] initWithFormat:@""];
        _MessCB.text = lemessage;
        return;
    }
    
    _balle.center = CGPointMake(_balle.center.x + vitesseBalle.x , _balle.center.y + vitesseBalle.y);
    if (_balle.center.x > self.view.bounds.size.width || _balle.center.x < 0)
        vitesseBalle.x = -vitesseBalle.x;
    if (_balle.center.y > self.view.bounds.size.height || _balle.center.y < 68)
        vitesseBalle.y = -vitesseBalle.y;
    if ((CGRectIntersectsRect(_balle.frame,_bri1.frame))  && (_bri1.hidden == NO))
    {
        _bri1.hidden=YES;
        vitesseBalle.y = -vitesseBalle.y;
    }
    if ((CGRectIntersectsRect(_balle.frame,_bri2.frame))  && (_bri2.hidden == NO))
    {
        _bri2.hidden=YES;
        vitesseBalle.y = -vitesseBalle.y;
    }
    if ((CGRectIntersectsRect(_balle.frame,_bri3.frame))  && (_bri3.hidden == NO))
    {
        _bri3.hidden=YES;
        vitesseBalle.y = -vitesseBalle.y;
    }
    if ((CGRectIntersectsRect(_balle.frame,_bri4.frame))  && (_bri4.hidden == NO))
    {
        _bri4.hidden=YES;
        vitesseBalle.y = -vitesseBalle.y;
    }
    if ((CGRectIntersectsRect(_balle.frame,_bri11.frame))  && (_bri11.hidden == NO))
    {
        _bri11.hidden=YES;
        vitesseBalle.y = -vitesseBalle.y;
    }
    if ((CGRectIntersectsRect(_balle.frame,_bri12.frame))  && (_bri12.hidden == NO))
    {
        _bri12.hidden=YES;
        vitesseBalle.y = -vitesseBalle.y;
    }
    if ((CGRectIntersectsRect(_balle.frame,_bri13.frame))  && (_bri13.hidden == NO))
    {
        _bri13.hidden=YES;
        vitesseBalle.y = -vitesseBalle.y;
    }
    if ((CGRectIntersectsRect(_balle.frame,_bri14.frame))  && (_bri14.hidden == NO))
    {
        _bri14.hidden=YES;
        vitesseBalle.y = -vitesseBalle.y;
    }
    if (CGRectIntersectsRect(_balle.frame,_raquette.frame))
    {
        if (_balle.center.y < _raquette.center.y)
            vitesseBalle.y = -vitesseBalle.y;
    }
    if (_balle.center.y > self.view.bounds.size.height)
    {
        _balle.center = CGPointMake(147.0f, 118.0f);
        NSString *lemessage = [[NSString alloc] initWithFormat:@"Perdu"];
        _MessCB.text = lemessage;
        [timer1 invalidate];
        debut = 0;
    }
    if ((_bri1.hidden == YES)  && (_bri2.hidden == YES)  && (_bri3.hidden == YES)  && (_bri4.hidden == YES) && (_bri14.hidden == YES)  && (_bri13.hidden == YES)  && (_bri12.hidden == YES) && (_bri11.hidden == YES))
    {
        NSString *lemessage = [[NSString alloc] initWithFormat:@"Bravo"];
        _bri1.hidden=NO;
        _bri2.hidden=NO;
        _bri3.hidden=NO;
        _bri4.hidden=NO;
        _bri11.hidden=NO;
        _bri12.hidden=NO;
        _bri13.hidden=NO;
        _bri14.hidden=NO;
        _balle.center = CGPointMake(147.0f, 118.0f);
        _MessCB.text = lemessage;
        [timer1 invalidate];
        debut = 0;
    }
}

-(void) touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [[event allTouches] anyObject];
    CGPoint location = [touch locationInView:touch.view];
    _raquette.center = CGPointMake(location.x,_raquette.center.y);
}



@end
