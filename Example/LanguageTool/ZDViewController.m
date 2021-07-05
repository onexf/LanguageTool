//
//  ZDViewController.m
//  LanguageTool
//
//  Created by onexf on 07/05/2021.
//  Copyright (c) 2021 onexf. All rights reserved.
//

#import "ZDViewController.h"
#import "LanguageTool.h"
@interface ZDViewController ()

@end

@implementation ZDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
//    [[LanguageTool languageBundle] localizedStringForKey:(key) value:@"" table:nil]
    
    [[LanguageTool languageBundle] localizedStringForKey:@"" value:@"" table:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
