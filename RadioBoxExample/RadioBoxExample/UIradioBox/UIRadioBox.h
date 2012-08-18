//
//  UIRadioBox.h
//  ttye
//
//  Created by Chu Mohua on 12-8-18.
//
//

#import <Foundation/Foundation.h>
#import "UIRadioBoxItem.h"

@protocol UIRadioBoxDelegate <NSObject>

@optional
-(void)RadioBoxValueChange:(int)value;

@end


@interface UIRadioBox : NSObject<UIRadioBoxItemDelegate>{
    
    NSMutableDictionary *radioBoxItems;
    
}

@property(nonatomic) int value;
@property(nonatomic,assign)id<UIRadioBoxDelegate>delegate;

-(void)addItem:(UIRadioBoxItem *)item value:(int)val;

@end
