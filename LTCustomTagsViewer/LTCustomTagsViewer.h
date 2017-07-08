//
//  LTCustomTagsViewer.h
//  LTCustomTagsViewer
//
//  Created by luthertsai on 2017/7/4.
//  Copyright © 2017年 luthertsai. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, LTCustomTagsViewStyle) {
    LTCustomClassicStyle,
    LTCustomDcardStyle
};

@protocol LTCustomTagsViewerDelegate <NSObject>
- (void)clickOnTag:(NSDictionary *)tagDict selected:(BOOL)selected;
@end

@interface LTCustomTagsViewer : UIView
@property (nonatomic, assign) id delegate;
/**
 Set style of LTCustomTagsViewStyle.
 */
@property (nonatomic, assign) LTCustomTagsViewStyle style;
/**
 Assign tags array for construct LTCustomTagsViewer. Only accepted NSString, any other type will be dropped.
 */
@property (nonatomic, strong) NSArray *tagsArray;

@end
