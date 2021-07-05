//
//  LanguageTool.m
//  NewDingying
//
//  Created by 丁鹏飞 on 2017/11/23.
//  Copyright © 2017年 Zhida. All rights reserved.
//

#import "LanguageTool.h"

static NSString *LanguageKey = @"LanguageKey";

static NSString *Language_ZH = @"zh-Hans";//简体
static NSString *Language_EN = @"en";//英文
static NSString *Language_TZH = @"zh-Hant";//繁体字

@implementation LanguageTool

+ (NSBundle *)languageBundle {
    
    NSInteger type = [[NSUserDefaults standardUserDefaults] integerForKey:LanguageKey];
    NSString *language;

    if (type == LanguageTypeAuto) {
        NSArray *appLanguages = [[NSBundle mainBundle] preferredLocalizations];
        NSString *systemLanguage = [appLanguages firstObject];
        if ([systemLanguage containsString:Language_ZH]) {
            language = Language_ZH;
        }
//        else if ([systemLanguage containsString:Language_TZH]) {
//            language = Language_TZH;
//        }
        else {
            language = Language_EN;
        }
    } else if (type == LanguageTypeEn) {
        language = Language_EN;
    }
//    else if (type == LanguageTypeTZh) {
//        language = Language_TZH;
//    }
    else {
        language = Language_ZH;
    }
    NSString *path = [[NSBundle mainBundle] pathForResource:language ofType:@"lproj"];
    
    return [NSBundle bundleWithPath:path];
}

+ (LanguageType)currentLanguageType {
    return [[NSUserDefaults standardUserDefaults] integerForKey:LanguageKey];
}

+ (void)changeLanguageToType:(LanguageType)type {
    NSInteger currentType = [[NSUserDefaults standardUserDefaults] integerForKey:LanguageKey];
    if (currentType != type) {
        [[NSUserDefaults standardUserDefaults] setInteger:type forKey:LanguageKey];
    }
}

+ (BOOL)isLanguage_En {
    if ([LanguageTool currentLanguageType] == LanguageTypeAuto) {
        NSArray *appLanguages = [[NSBundle mainBundle] preferredLocalizations];
        NSString *systemLanguage = [appLanguages firstObject];
        if ([systemLanguage containsString:@"en"]) {
            return YES;
        }
    } else if ([LanguageTool currentLanguageType] == LanguageTypeEn) {
        return YES;
    }
    return NO;
}
@end
