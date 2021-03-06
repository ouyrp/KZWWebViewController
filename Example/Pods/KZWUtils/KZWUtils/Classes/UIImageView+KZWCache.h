//
//  UIImageView+KZWCache.h
//  kongzhongfinancial
//
//  Created by ouyang on 2017/12/27.
//  Copyright © 2017年 ouy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KZWImageCacheManager.h"

@interface UIImageView (KZWCache)

- (void)KZW_setImageWithURL:(NSString* )urlString withImage:(UIImage *)placeholderImage;

//从网址下载图片，没下载完毕前，显示占位图片
- (void)KZW_setImageWithURL:(NSString* )urlString placeholderImage:(UIImage* )placeholderImage;

@end
