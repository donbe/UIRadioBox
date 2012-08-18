//
//  UIRadioBox.h
//  ttye
//
//  Created by Chu Mohua on 12-8-18.
//
//

#import <Foundation/Foundation.h>
#import "UIRadioBoxItem.h"

@class UIRadioBox;

@protocol UIRadioBoxDelegate <NSObject>

@optional
-(void)RadioBoxValueChange:(UIRadioBox *)sender;

@end


@interface UIRadioBox : NSObject<UIRadioBoxItemDelegate>{
    
    NSMutableDictionary *radioBoxItems;
    
}

@property(nonatomic) int value;
@property(nonatomic,assign)id<UIRadioBoxDelegate>delegate;
@property(nonatomic,readonly)NSString *text;

-(void)addItem:(UIRadioBoxItem *)item value:(int)val;

@end
