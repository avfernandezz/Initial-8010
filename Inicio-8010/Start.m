//
//  ViewController.m
//  Inicio-8010
//
//  Created by Walter Gonzalez Domenzain on 23/02/15.
//  Copyright (c) 2015 Smartplace. All rights reserved.
//

#import "Start.h"

NSArray         *aFixArray;
NSMutableArray  *maMsgs;
NSMutableArray  *maImgs;

NSString        *stInitialMsg;
int             iCounter = 0;

@interface Start ()

@end

@implementation Start

- (void)viewDidLoad {
    [super viewDidLoad];
    stInitialMsg        = @"Ya casi es hora de dormir";
    self.lblMsg.text    = stInitialMsg;
    self.imgUser.image  = [UIImage imageNamed:@"abraham.png"];
    self.lblMsg.adjustsFontSizeToFitWidth =  YES;
    
    maMsgs = [[NSMutableArray alloc] init];
    [maMsgs addObject:[NSString stringWithFormat:@"Soy un iPhone"]];
    [maMsgs addObject:[NSString stringWithFormat:@"Soy Edgar Lopez"]];
    [maMsgs addObject:[NSString stringWithFormat:@"Soy Alvaro Zetina"]];
    [maMsgs addObject:[NSString stringWithFormat:@"Soy Martin Flores"]];
    [maMsgs addObject:[NSString stringWithFormat:@"Soy Malu Galindo"]];
    [maMsgs addObject:[NSString stringWithFormat:@"Soy Batman"]];
    
    maImgs = [[NSMutableArray alloc] init];
    [maImgs addObject:[NSString stringWithFormat:@"iphone.png"]];
    [maImgs addObject:[NSString stringWithFormat:@"bart.png"]];
    [maImgs addObject:[NSString stringWithFormat:@"lisa.png"]];
    [maImgs addObject:[NSString stringWithFormat:@"homer.png"]];
    [maImgs addObject:[NSString stringWithFormat:@"marge.png"]];
    [maImgs addObject:[NSString stringWithFormat:@"batman.jpg"]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnChangeMsgPressed:(id)sender
{
    if (iCounter < maMsgs.count)
    {
        self.lblMsg.text    = maMsgs[iCounter];
        self.imgUser.image  = [UIImage imageNamed:maImgs[iCounter]];
        iCounter++;
    }
    else
    {
        iCounter    = 0;
        self.lblMsg.text    = @"Fin";
        self.imgUser.image = [UIImage imageNamed:@"maggie.png"];
    }
}
@end
