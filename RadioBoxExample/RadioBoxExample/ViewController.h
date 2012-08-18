//
//  ViewController.h
//  RadioBoxExample
//
//  Created by Chu Mohua on 12-8-18.
//  Copyright (c) 2012年 Chu Mohua. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIradioBox.h"

@interface ViewController : UIViewController<UIRadioBoxDelegate>
{
    UIRadioBox *radioBox;
    
    IBOutlet UILabel *label;
}
@end
