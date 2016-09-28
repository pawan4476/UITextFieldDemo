//
//  ViewController.m
//  textField
//
//  Created by Nagam Pawan on 9/15/16.
//  Copyright © 2016 Nagam Pawan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{


    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{

}         // became first responder
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{

    return YES;
}       // return YES to allow editing to stop and to resign first responder status. NO to disallow the editing session to end
- (void)textFieldDidEndEditing:(UITextField *)textField{

}           // may be called if forced even if shouldEndEditing returns NO (e.g. view removed from window) or endEditing:YES called
- (void)textFieldDidEndEditing:(UITextField *)textField reason:(UITextFieldDidEndEditingReason)reason NS_AVAILABLE_IOS(10_0)
{
    
    
}// if implemented, called in place of textFieldDidEndEditing:

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{

    return YES;
}   // return NO to not change text

- (BOOL)textFieldShouldClear:(UITextField *)textField{
    return YES;

}             // called when clear button pressed. return NO to ignore (no notifications)
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];

    return YES;
}

@end
