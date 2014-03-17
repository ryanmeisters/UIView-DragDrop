//
//  ViewController.m
//  DragDropExample
//
//  Created by Ryan Meisters on 3/14/14.
//  Copyright (c) 2014 rm. All rights reserved.
//

#import "ViewController.h"




@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //View 1 - draggable, returns to original position
    [self.dragView1 makeDraggableWithDropViews:@[self.dropView] delegate:self];
    
    //view 2 - draggable, does not return to original position
    [self.dragView2 makeDraggableWithDropViews:@[self.dropView] delegate:self];
    
    //view 3 - draggable on y axis only
    [self.dragView3 makeDraggableWithDropViews:@[self.dropView] delegate:self];
    [self.dragView3 setDragMode:UIViewDragDropModeRestrictY];
    
    //view 3 - draggable on x axis only
    [self.dragView4 makeDraggableWithDropViews:@[self.dropView] delegate:self];
    [self.dragView4 setDragMode:UIViewDragDropModeRestrictX];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UIViewDragDropDelegate

- (void) view:(UIView *)view wasDroppedOnDropView:(UIView *)drop
{
    NSString *msg = [NSString stringWithFormat:@"%@ was dropped on %@", [view.subviews[0] text], [drop.subviews[0] text]];
    
    [self updateDisplayLabel:msg];
}

- (BOOL) viewShouldReturnToStartingPosition:(UIView*)view
{
    if (view == self.dragView1) return YES;
    if (view == self.dragView3) return YES;
    if (view == self.dragView4) return YES;
    
    return NO;
}

- (void) draggingDidBeginForView:(UIView*)view
{
    NSString * msg = [NSString stringWithFormat:@"Draggin began for %@", [view.subviews[0] text]];
    
    [self updateDisplayLabel:msg];
}

- (void) draggingDidEndWithoutDropForView:(UIView*)view
{
    NSString *msg = [NSString stringWithFormat:@"Dragging ended without drop for %@", [view.subviews[0] text]];
    [self updateDisplayLabel:msg];
}

- (void) view:(UIView *)view didHoverOverDropView:(UIView *)dropView
{
    NSString *msg = [NSString stringWithFormat:@"%@ hovered over %@", [view.subviews[0] text], [dropView.subviews[0] text]];
    
    [self updateDisplayLabel:msg];
}

- (void) view:(UIView *)view didUnhoverOverDropView:(UIView *)dropView
{
    NSString *msg = [NSString stringWithFormat:@"%@ unhovered over %@", [view.subviews[0] text], [dropView.subviews[0] text]];
    [self updateDisplayLabel:msg];
}


#pragma mark - 

- (void) updateDisplayLabel:(NSString*)message
{
    self.label.text = message;
}

@end
