//
//  UIRadioBoxItem.m
//  ttye
//
//  Created by Chu Mohua on 12-8-18.
//
//

#import "UIRadioBoxItem.h"

@interface UIRadioBoxItem (){
    BOOL loaded;
}

@property(nonatomic, strong)UILabel *textLabel;

@end

@implementation UIRadioBoxItem

@synthesize checked = _checked;
@synthesize text = _text;
@synthesize textLabel = _textLabel;

-(id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

-(void)drawRect:(CGRect)rect {
    UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"uiradiobox_%@selected.png", (self.checked) ? @"" : @"un"]];

    [image drawInRect:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
    
    
    if(self.text) {
        if(!loaded) {
            _textLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.frame.size.width + 21, 0, 1024, 30)];
            _textLabel.backgroundColor = [UIColor clearColor];
            _textLabel.font = [UIFont systemFontOfSize:18];
            _textLabel.textColor = [UIColor colorWithRed:64/255.0 green:39/255.0 blue:0 alpha:1];
            [self addSubview:_textLabel];
            
            loaded = TRUE;
        }
        
        _textLabel.text = self.text;
    }
}

-(BOOL)beginTrackingWithTouch:(UITouch *)touch withEvent:(UIEvent *)event {
    if (!_checked) {
        self.checked = YES;
        if ([self.delegate respondsToSelector:@selector(UIRadioBoxItemSelected:)]) {
            [self.delegate UIRadioBoxItemSelected:self];
        }
    }
    return TRUE;
}

-(void)setChecked:(BOOL)boolValue {
    _checked = boolValue;
    [self setNeedsDisplay];
}



-(void)setText:(NSString *)stringValue {
    _text = stringValue;
    [self setNeedsDisplay];
}

@end
