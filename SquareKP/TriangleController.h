//
//  TriangleController.h
//  SquareKP
//
//  Created by Mark on 3/21/19.
//  Copyright © 2019 Mark. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TriangleController : UIViewController <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *aSide;
@property (weak, nonatomic) IBOutlet UITextField *bSide;
@property (weak, nonatomic) IBOutlet UITextField *cSide;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

- (IBAction)resultAction:(id)sender;



@end

NS_ASSUME_NONNULL_END
