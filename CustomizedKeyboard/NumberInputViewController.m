//
//  NumberInputViewController.m
//
//  Loosely based on Ray Wenderlich
//  WeaponInputViewController.m
//  MathMonsters
//

#import "NumberInputViewController.h"

@implementation NumberInputViewController
//@synthesize delegate = _delegate;

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)viewDidUnload {
    [super viewDidUnload];
}

- (void)dealloc {
    self.delegate = nil;
    //[super dealloc];
}

- (IBAction)zeroTapped:(id)sender {
    if (self.delegate != nil) {
        [self.delegate weaponTapped:Zero];
    }
}

- (IBAction)blowgunTapped:(id)sender {
    if (self.delegate != nil) {
        [self.delegate weaponTapped:Blowgun];
    }
}

- (IBAction)fireTapped:(id)sender {
    if (self.delegate != nil) {
        [self.delegate weaponTapped:Fire];
    }
}

- (IBAction)ninjastarTapped:(id)sender {
    if (self.delegate != nil) {
        [self.delegate weaponTapped:NinjaStar];
    }
}

- (IBAction)smokeTapped:(id)sender {
    if (self.delegate != nil) {
        [self.delegate weaponTapped:Smoke];
    }
}

- (IBAction)swordTapped:(id)sender {
    if (self.delegate != nil) {
        [self.delegate weaponTapped:Sword];
    }
}

- (IBAction)sixTapped:(id)sender {
    if (self.delegate != nil) {
        [self.delegate weaponTapped:Six];
    }
}

- (IBAction)sevenTapped:(id)sender {
    if (self.delegate != nil) {
        [self.delegate weaponTapped:Seven];
    }
}

- (IBAction)eightTapped:(id)sender {
    if (self.delegate != nil) {
        [self.delegate weaponTapped:Eight];
    }
}

- (IBAction)nineTapped:(id)sender {
    if (self.delegate != nil) {
        [self.delegate weaponTapped:Nine];
    }
}

- (IBAction)dotTapped:(id)sender {
    if (self.delegate != nil) {
        [self.delegate weaponTapped:Dot];
    }
}

- (IBAction)doneTapped:(id)sender {
    if (self.delegate != nil) {
        [self.delegate doneTapped];
    }
}

- (IBAction)clearTapped:(id)sender {
    if (self.delegate != nil) {
        [self.delegate clearTapped];
    }
}

@end
