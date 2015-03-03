//
//  ViewController.h
//  Inicio-8010
//
//  Created by Walter Gonzalez Domenzain on 23/02/15.
//  Copyright (c) 2015 Smartplace. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Start : UIViewController

//Images
@property (strong, nonatomic) IBOutlet UIImageView *imgUser;

//Labels
@property (strong, nonatomic) IBOutlet UILabel *lblMsg;

//Actions
- (IBAction)btnChangeMsgPressed:(id)sender;
- (IBAction)btnNextPressed:(id)sender;
- (IBAction)btnScreen2Pressed:(id)sender;

@end

