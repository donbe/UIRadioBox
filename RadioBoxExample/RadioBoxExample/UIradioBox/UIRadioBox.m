//
//  UIRadioBox.m
//  ttye
//
//  Created by Chu Mohua on 12-8-18.
//
//

#import "UIRadioBox.h"

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

-(int)value{
    for (NSNumber *key in radioBoxItems) {
        if (((UIRadioBoxItem *)[radioBoxItems objectForKey:key]).checked) {
            return [key intValue];
            break;
        }
    }
    return 0;
}

-(void)setValue:(int)value{

    for (NSNumber *key in radioBoxItems) {
        if ([key integerValue] == value) {
            ((UIRadioBoxItem *)[radioBoxItems objectForKey:key]).checked = YES;
        }else{
            ((UIRadioBoxItem *)[radioBoxItems objectForKey:key]).checked = NO;
        }
    }
}

#pragma mark - UICheckboxDelegate
-(void)UIRadioBoxItemSelected:(UIRadioBoxItem *)sender{
    NSArray *items = [radioBoxItems allValues];
    for (UIRadioBoxItem *item in items) {
        if (item != sender) {
            item.checked = NO;
        }
    }
    if ([self.delegate respondsToSelector:@selector(RadioBoxValueChange:)]) {
        [self.delegate RadioBoxValueChange:self.value];
    }
}
@end
