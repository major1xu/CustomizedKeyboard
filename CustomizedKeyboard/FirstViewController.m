//
//  FirstViewController.m
//  CustomizedKeyboard
//
//  Created by Minjie Xu on 5/10/13.
//  Copyright (c) 2013 Minjie Xu. All rights reserved.
//

#import "FirstViewController.h"
#import "NumberInputViewController.h"

@interface FirstViewController  () <NumberInputControllerDelegate>

@property (nonatomic, retain) NumberInputViewController *weaponInputView;

@end

@implementation FirstViewController

@synthesize myTextField = _textField;
@synthesize weaponInputView = _weaponInputView;

static inline BOOL IsEmpty(id thing) {
    return thing == nil
    || ([thing respondsToSelector:@selector(length)]
        && [(NSData *)thing length] == 0)
    || ([thing respondsToSelector:@selector(count)]
        && [(NSArray *)thing count] == 0);
}

- (UIView *)inputView {
    if (_weaponInputView == nil) {
        self.weaponInputView = [[NumberInputViewController alloc]
                                 initWithNibName:@"NumberInputViewController"
                                 bundle:[NSBundle mainBundle]];
        _weaponInputView.delegate = self;
    }
    return _weaponInputView.view;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // Note:
    // 1) This works well if there is one only text field, if there is more than one, we can create
    // an activeTextField, and keep track of that.
    //
    // 2) Also, if there is more than one activeTextField, we need to handle it properly in the delegate methods below
    // Similar can be said for the programmatically created UITextField.
    //
    // 3) Another potential problem is the input view won't go away if the user tapped multiple text fields at the same time, in that case, we should implement textFieldDelegate methods (textFieldShouldBeginEditing and textFieldShouldEndEditing), and make sure resignFirstResponder in the "End" method.
    //
    // 4) This can be also be used as inputAccessoryView (put the number pad on top of a regular characeter key board)
    
    _textField.inputView = [self inputView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark NumberInputControllerDelegate
- (void)weaponTapped:(Weapon)weapon {
    // Take input form the keypad, and put them in the textfield
    // if "clear", set to zero
    // otherwise check if there is any number, if yes, set textfield = the existing number * 10 + the new number
    // if no, set textfield = new number
    if (IsEmpty(_textField)) {
        NSString *textString = [[NSString alloc] initWithFormat:@"%i", weapon];
        _textField.text = textString;
    }
    else
    {
        NSLog(@"weapon = %i", weapon);
        // Previously I only need to handle the number, thus I can do the "*10" trick to move
        // digits. Now I need to be more intelligent considering we can have both number and character
        NSString *oldString = _textField.text;
        
        NSString *textString;
        if(weapon < Dot)
        {
            NSLog(@"%i tapped", weapon);
            textString = [[NSString alloc] initWithFormat:@"%@%i", oldString, weapon];
        }
        else if (weapon == Dot)
        {
            NSLog(@"Dot tapped");
            textString = [[NSString alloc] initWithFormat:@"%@.", oldString];
        }
        _textField.text = textString;
    }
}

- (void)doneTapped {
    [_textField resignFirstResponder];
    
}

- (void)clearTapped {
    _textField.text = @"";
}

@end
