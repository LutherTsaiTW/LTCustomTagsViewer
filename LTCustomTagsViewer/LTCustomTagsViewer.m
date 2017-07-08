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

#pragma mark - Consturct the UILayout
- (void)setup {
    
}

#pragma mark - IBAciton
- (IBAction)touchOnTag:(UIButton *)sender {
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

@end
