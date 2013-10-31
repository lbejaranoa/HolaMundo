//
//  OMCViewController.h
//  HolaMundo
//
//  Created by ios3729 on 28/10/13.
//  Copyright (c) 2013 infinitodhd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OMCViewController : UIViewController
@property (nonatomic,weak) IBOutlet UILabel *lblText;
@property (nonatomic,weak) IBOutlet UITextField *txtInText;
@property (nonatomic,weak) IBOutlet UITextField *txtInOpe2;
@property (nonatomic,weak) IBOutlet UITextField *txtOutRes;
-(IBAction)btnOk:(id)sender;
-(IBAction)btnSumar:(id)sender;
-(IBAction)btnSuma2:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *txtInOpe1;
- (IBAction)hideKey:(id)sender;
- (IBAction)sldOpe1:(id)sender;
- (IBAction)sldOpe2:(id)sender;
@property (weak, nonatomic) IBOutlet UISlider *sldOpe1;
@property (weak, nonatomic) IBOutlet UISlider *sldOpe2;
- (IBAction)mudoValor:(UISlider *)slider;
- (IBAction)tab:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *txtTab;
- (IBAction)tabAction:(id)sender;

@end
