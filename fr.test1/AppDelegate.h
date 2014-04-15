//
//  AppDelegate.h
//  fr.test1
//
//  Created by Christophe Olivier on 11/03/2014.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : NSObject <UIApplicationDelegate> { // 2
    
    IBOutlet UILabel *helloLabel; // 3
}

@property (nonatomic, retain) IBOutlet UIWindow *window; // 4


@end