//
//  TriangleController.m
//  SquareKP
//
//  Created by Mark on 3/21/19.
//  Copyright © 2019 Mark. All rights reserved.
//

#import "TriangleController.h"

@interface TriangleController ()

@property (assign,nonatomic) float firstResult;
@property (assign,nonatomic) float secondResult;

@end

@implementation TriangleController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
}



- (IBAction)resultAction:(id)sender {
    NSString *textASide = [_aSide text];
    float floatValueASide = [textASide floatValue];
    
    NSString *textBSide = [_bSide text];
    float floatValueBSide = [textBSide floatValue];
    
    NSString *textCSide = [_cSide text];
    float floatValueCSide = [textCSide floatValue];
    
    self.firstResult = floatValueASide/floatValueBSide;
    
    float chisl = (floatValueCSide*floatValueCSide); // чисельник
    float znaminatel = (floatValueBSide-floatValueASide); //знаменник
    NSLog(@"%f" , znaminatel);
    
    self.secondResult = chisl/(znaminatel*znaminatel);
    
    self.resultLabel.hidden = NO;
    self.resultLabel.text = [NSString stringWithFormat:@"1. = %f\n2. = %f" ,self.firstResult, self.secondResult];
}




#pragma mark - Delegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    if ([textField isEqual:self.aSide]) {
        [self.bSide becomeFirstResponder];
    }else if([textField isEqual:self.bSide]){
        [self.cSide becomeFirstResponder];
    }else if([textField isEqual:self.cSide]){
        [self.cSide resignFirstResponder];
        
    }
    return YES;
}




- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    
    if ([textField isEqual:self.aSide]) {
        
        NSCharacterSet* validationSet = [[NSCharacterSet decimalDigitCharacterSet]invertedSet];
        NSArray* components = [string componentsSeparatedByCharactersInSet:validationSet];
        
        if ([components count] > 1) {
            return NO;
        }
        
        NSString* newString = [textField.text stringByReplacingCharactersInRange:range withString:string];
        
        static const int maxLenght = 11;
        
        if ([newString length] > maxLenght) {
            return NO;
        }
        
    }
    if ([textField isEqual:self.bSide]) {
        
        NSCharacterSet* validationSet = [[NSCharacterSet decimalDigitCharacterSet]invertedSet];
        NSArray* components = [string componentsSeparatedByCharactersInSet:validationSet];
        
        if ([components count] > 1) {
            return NO;
        }
        
        NSString* newString = [textField.text stringByReplacingCharactersInRange:range withString:string];
        
        static const int maxLenght = 11;
        
        if ([newString length] > maxLenght) {
            return NO;
        }
        
    }
    if ([textField isEqual:self.cSide]) {
        
        NSCharacterSet* validationSet = [[NSCharacterSet decimalDigitCharacterSet]invertedSet];
        NSArray* components = [string componentsSeparatedByCharactersInSet:validationSet];
        
        if ([components count] > 1) {
            return NO;
        }
        
        NSString* newString = [textField.text stringByReplacingCharactersInRange:range withString:string];
        
        static const int maxLenght = 11;
        
        if ([newString length] > maxLenght) {
            return NO;
        }
        
    }
    return YES;
}
    
    
@end
