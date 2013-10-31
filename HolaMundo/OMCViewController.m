//
//  OMCViewController.m
//  HolaMundo
//
//  Created by ios3729 on 28/10/13.
//  Copyright (c) 2013 infinitodhd. All rights reserved.
//

#import "OMCViewController.h"

@interface OMCViewController ()

@end

@implementation OMCViewController

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

-(IBAction)btnOk:(id)sender;{
    //mandamos mensaje a log
    NSLog(@"tocou no botao");
    self.lblText.text=self.txtInText.text;
    
}
-(IBAction)btnSumar:(id)sender;{
    
    NSString* strValor1= self.txtInOpe1.text;
    NSString* strValor2=self.txtInOpe2.text;
    CGFloat valor1=[strValor1 floatValue];
    CGFloat valor2=[strValor2 floatValue];
    CGFloat resultado= valor1+valor2;
    
    NSString* mostra=[NSString stringWithFormat:@"O resultado e: %.2f",resultado];
    self.txtOutRes.text=mostra;
    //convertimos campos a tipo entero
    //int iOpe1=self.txtInOpe1.text.intValue;
    //int iOpe2=self.txtInOpe2.text.intValue;
    //NSString* strValor1=self.txtInOpe1.text;
    //NSString* strValor2=self.txtInOpe2.text;
    
    //define el tipo de int
    
    
    //int iResult=iOpe1+iOpe2;
    //NSString *sResult= [NSString stringWithFormat:@"Resultado: %d",iResult];
    //self.txtOutRes.text=sResult;
}

-(CGFloat)somaOpe1:(CGFloat) Ope1 somaOpe2:(CGFloat) Ope2{}

- (IBAction)btnSuma2:(id)sender {
    
}
@synthesize txtInOpe2;
- (IBAction)hideKey:(id)sender {
    [txtInOpe2 resignFirstResponder];
}

- (IBAction)sldOpe1:(id)sender {
    //self.sldOpe1.value;
    CGFloat valor1=self.sldOpe1.value;
    // se colocar la exactitud del float con .2 .4
    self.txtInOpe1.text=[NSString stringWithFormat:@"%.2f",valor1];
    
}

- (IBAction)sldOpe2:(id)sender {
    UISlider *sender1=(UISlider *)sender;
    CGFloat valor2=[sender1 value];
    self.txtInOpe2.text=[NSString stringWithFormat:@"%.2f",valor2];
}
- (IBAction)mudoValor:(UISlider *)slider {
    CGFloat fValor= slider.value;
    NSString * sValor=[NSString stringWithFormat:@"%.2f",fValor];
    if(slider.tag==0){
        self.txtInOpe1.text=sValor;
    }
    if(slider.tag==1){
        self.txtInOpe2.text=sValor;
    }
    
}

- (IBAction)tab:(id)sender {
    int iTab=self.txtTab.text.intValue;
    int resultado;
    for(int i=0; i<10;i++){
        resultado=iTab*i;
        NSLog(@"%d x%d +%d",iTab,i,resultado);
    }
}
@synthesize txtTab;
- (IBAction)tabAction:(id)sender {
    [txtTab resignFirstResponder];
}



@end
