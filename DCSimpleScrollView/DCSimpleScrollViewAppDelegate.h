//
//  DCSimpleScrollViewAppDelegate.h
//  DCSimpleScrollView
//
//  Created by Eric Knapp on 4/15/11.
//  Copyright 2011 Dovetail Computing, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DCSimpleScrollViewController;

@interface DCSimpleScrollViewAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) DCSimpleScrollViewController *viewController;

@end
