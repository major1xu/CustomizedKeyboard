//
//  NumberInputViewController.h
//
//  Loosely based on Ray Wenderlich
//  WeaponInputViewController.h
//  MathMonsters
//

#import <UIKit/UIKit.h>

typedef enum {
    Zero = 0,
    Blowgun,
    NinjaStar,
    Fire,
    Sword,
    Smoke,
    Six,
    Seven,
    Eight,
    Nine,
    Dot
} Weapon;

@protocol NumberInputControllerDelegate
- (void)weaponTapped:(Weapon)weapon;
- (void)doneTapped;
- (void)clearTapped;
@end

@interface NumberInputViewController : UIViewController {
//    id<NumberInputControllerDelegate> _delegate;
}

@property (nonatomic, assign) id<NumberInputControllerDelegate> delegate;

- (IBAction)zeroTapped:(id)sender;
- (IBAction)blowgunTapped:(id)sender;
- (IBAction)fireTapped:(id)sender;
- (IBAction)ninjastarTapped:(id)sender;
- (IBAction)smokeTapped:(id)sender;
- (IBAction)swordTapped:(id)sender;
- (IBAction)sixTapped:(id)sender;
- (IBAction)sevenTapped:(id)sender;
- (IBAction)eightTapped:(id)sender;
- (IBAction)nineTapped:(id)sender;
- (IBAction)dotTapped:(id)sender;
- (IBAction)doneTapped:(id)sender;
- (IBAction)clearTapped:(id)sender;

@end
