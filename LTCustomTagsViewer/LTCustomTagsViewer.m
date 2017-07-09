//
//  LTCustomTagsViewer.m
//  LTCustomTagsViewer
//
//  Created by luthertsai on 2017/7/4.
//  Copyright © 2017年 luthertsai. All rights reserved.
//

#import "LTCustomTagsViewer.h"

@implementation LTCustomTagsViewer
@synthesize delegate;

- (instancetype)initWithTags:(NSArray *)tagsArray {
    self = [super init];
    if (self) {
        [self setBackgroundColor:[UIColor whiteColor]];
    }
    _style = LTCustomClassicStyle;
    if (tagsArray != nil) {
        _tagsArray = [[NSArray alloc] initWithArray:tagsArray copyItems:YES];
    } else {
        _tagsArray = [NSArray new];
    }
    return self;
}

#pragma mark - UILayout Setting
- (void)setup {
    
}

- (void)changeLayoutAfterTouchButton:(UIButton *)sender {
    if (sender.selected) {
        [sender setBackgroundColor:_tagSelectedColor];
    } else {
        [sender setBackgroundColor:_tagColor];
    }
}

#pragma mark - IBAciton
- (IBAction)touchOnTag:(UIButton *)sender {
    sender.selected = !sender.selected;
    [self changeLayoutAfterTouchButton:sender];
    [delegate clickOnTag:[NSDictionary new] selected:sender.selected];
}

#pragma mark - Calculate Width Of String
- (CGFloat)widthOfString:(NSString *)string withFont:(UIFont *)font {
    if (string) {
        NSDictionary *attributes = [NSDictionary dictionaryWithObjectsAndKeys:font, NSFontAttributeName, nil];
        return [[[NSAttributedString alloc] initWithString:string attributes:attributes] size].width + 15;
    } else {
        return 0;
    }
}

#pragma mark - Setter & Getter
- (void)setTagsArray:(NSArray *)tagsArray {
    _tagsArray = tagsArray;
}

- (void)setTagColor:(UIColor *)tagColor {
    _tagColor = tagColor;
}

- (void)setTagTextColor:(UIColor *)tagTextColor {
    _tagTextColor = tagTextColor;
}

- (void)setTagSelectedColor:(UIColor *)tagSelectedColor {
    _tagSelectedColor = tagSelectedColor;
}

- (void)setTagTextSelectedColor:(UIColor *)tagTextSelectedColor {
    _tagTextSelectedColor = tagTextSelectedColor;
}
@end
