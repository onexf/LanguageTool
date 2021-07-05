//
//  LanguageTool.h
//  NewDingying
//
//  Created by 丁鹏飞 on 2017/11/23.
//  Copyright © 2017年 Zhida. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger,LanguageType) {
    LanguageTypeAuto = 0,
    LanguageTypeZh,
    LanguageTypeEn,
    //LanguageTypeTZh
};

@interface LanguageTool : NSObject

+ (NSBundle *)languageBundle;

///当前的语言类型
+ (LanguageType)currentLanguageType;
///切换到某种语言类型
+ (void)changeLanguageToType:(LanguageType)type;

///是否英文（跟随系统英文，或者英文）
+ (BOOL)isLanguage_En;

@end
