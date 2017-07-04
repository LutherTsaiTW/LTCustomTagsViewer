//
//  LTCustomTagsViewer.m
//  LTCustomTagsViewer
//
//  Created by luthertsai on 2017/7/4.
//  Copyright © 2017年 luthertsai. All rights reserved.
//

#import "LTCustomTagsViewer.h"

@implementation LTCustomTagsViewer

#pragma mark - Calculate Width Of String
- (CGFloat)widthOfString:(NSString *)string withFont:(UIFont *)font {
    if (string) {
        NSDictionary *attributes = [NSDictionary dictionaryWithObjectsAndKeys:font, NSFontAttributeName, nil];
        return [[[NSAttributedString alloc] initWithString:string attributes:attributes] size].width + 15;
    } else {
        return 0;
    }
}

@end
