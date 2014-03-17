//
//  ViewController.h
//  DragDropExample
//
//  Created by Ryan Meisters on 3/14/14.
//  Copyright (c) 2014 rm. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "UIView+DragDrop.h"

@interface ViewController : UIViewController <UIViewDragDropDelegate>

@property (nonatomic) IBOutlet UIView *dragView1;
@property (nonatomic) IBOutlet UIView *dragView2;
@property (nonatomic) IBOutlet UIView *dragView3;
@property (nonatomic) IBOutlet UIView *dragView4;

@property (nonatomic) IBOutlet UIView *dropView;

@property (nonatomic) IBOutlet UILabel *label;

@end
