//
//  UIRadioBoxItem.h
//  ttye
//
//  Created by Chu Mohua on 12-8-18.
//
//

#import <UIKit/UIKit.h>

@class UIRadioBoxItem;

@protocol UIRadioBoxItemDelegate <NSObject>

-(void)UIRadioBoxItemSelected:(UIRadioBoxItem *)sender;

@end

@interface UIRadioBoxItem : UIControl

@property(nonatomic, assign)BOOL checked;
@property(nonatomic, strong)NSString *text;
@property(nonatomic, assign)id<UIRadioBoxItemDelegate>delegate;

@end
