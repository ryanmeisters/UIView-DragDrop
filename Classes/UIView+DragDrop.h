//
//  UIView+DragDrop.h
//
//  Created by Ryan Meisters.
//

#import <UIKit/UIKit.h>


typedef NS_ENUM( NSInteger, UIViewDragDropMode) {
    UIViewDragDropModeNormal,
    UIViewDragDropModeRestrictY,
    UIViewDragDropModeRestrictX
};

@protocol UIViewDragDropDelegate;

/**
 *  A Category that adds Drag and drop functionality to UIView
 */
@interface UIView (DragDrop)

/**
 *  Set up drag+drop
 *  @params
 *    views: NSArray of drop views
 *    delegate: id delegate conforming to UIViewDragDropDelegave protocol
 */
- (void) makeDraggableWithDropViews:(NSArray *)views delegate:(id<UIViewDragDropDelegate>)delegate;

- (void) makeDraggable;

- (void) setDelegate:(id<UIViewDragDropDelegate>)delegate;

- (void) setDragMode:(UIViewDragDropMode)mode;

- (void) setDropViews:(NSArray*)views;

@end

/**
 *  The UIViewDragDropDelegate Protocol
 */
@protocol UIViewDragDropDelegate <NSObject>


@optional

- (void) view:(UIView *)view wasDroppedOnDropView:(UIView *)drop;

- (BOOL) viewShouldReturnToStartingPosition:(UIView*)view;

- (void) draggingDidBeginForView:(UIView*)view;
- (void) draggingDidEndWithoutDropForView:(UIView*)view;

- (void) view:(UIView *)view didHoverOverDropView:(UIView *)dropView;
- (void) view:(UIView *)view didUnhoverOverDropView:(UIView *)dropView;

@end