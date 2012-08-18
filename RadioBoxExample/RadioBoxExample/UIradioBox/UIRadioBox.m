//
//  UIRadioBox.m
//  ttye
//
//  Created by Chu Mohua on 12-8-18.
//
//

#import "UIRadioBox.h"

@interface UIRadioBox()
{
    int currentValue;
}

@end

@implementation UIRadioBox

-(id)init{
    self = [super init];
    if (self) {
        radioBoxItems = [[NSMutableDictionary alloc] init];
    }
    return self;
}

-(void)addItem:(UIRadioBoxItem *)item value:(int)val{
    item.delegate = self;
    [radioBoxItems setObject:item forKey:[NSNumber numberWithInt:val]];
}

-(void)setValue:(int)value{    
    ((UIRadioBoxItem *)[radioBoxItems objectForKey:[NSNumber numberWithInt:currentValue]]).checked = NO;
    currentValue = value;
    ((UIRadioBoxItem *)[radioBoxItems objectForKey:[NSNumber numberWithInt:value]]).checked = YES;
}

-(int)value{
    return currentValue;
}

-(NSString *)text{
    return ((UIRadioBoxItem *)[radioBoxItems objectForKey:[NSNumber numberWithInt:currentValue]]).text;
}

#pragma mark - UICheckboxDelegate
-(void)UIRadioBoxItemSelected:(UIRadioBoxItem *)sender{
    for (NSNumber *key in radioBoxItems) {
        UIRadioBoxItem *item = [radioBoxItems objectForKey:key];
        if (item == sender) {
            currentValue = [key intValue];
        }else{
            item.checked = NO;
        }
    }
    if ([self.delegate respondsToSelector:@selector(RadioBoxValueChange:)]) {
        [self.delegate RadioBoxValueChange:self];
    }
}
@end
