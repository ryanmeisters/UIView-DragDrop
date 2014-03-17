# UIView+DragDrop

<!--[![Version](http://cocoapod-badges.herokuapp.com/v/UIView+DragDrop/badge.png)](http://cocoadocs.org/docsets/UIView+DragDrop) -->
<!-- [![Platform](http://cocoapod-badges.herokuapp.com/p/UIView+DragDrop/badge.png)](http://cocoadocs.org/docsets/UIView+DragDrop) -->

## Usage
1. Install with [CocoaPods](http://cocoapods.org)
    ```
    pod "UIView+DragDrop"
    ```

2. Include UIView+DragDrop.h
    ```
    #import "UIView+DragDrop.h"
    ````
3. Call 'makeDraggable' or 'makeDraggableWithDropViews:delegate:' on a UIView or UIView subclass, set a delegate, and configure as needed 
    ```

    //make a view draggable
    [self.view1 makeDraggable];
    [self.view1 setDelegate:self];

    // Set drop views with an array of UIView elements
    [self.view1 setDropViews:@[..]];

    // Restricts drag motion to x axis
    [self.view1 setDragMode:UIViewDragDropModeRestrictX];

    ```

##Documentation

###Making a UIView Draggable
```
- (void) makeDraggable;

- (void) makeDraggableWithDropViews:(NSArray *)views delegate:(id<UIViewDragDropDelegate>)delegate;
```

###Configure
```
- (void) setDelegate:(id<UIViewDragDropDelegate>)delegate;

- (void) setDragMode:(UIViewDragDropMode)mode;

- (void) setDropViews:(NSArray*)views;

```

###Drag Modes
```
typedef NS_ENUM( NSInteger, UIViewDragDropMode) {
    UIViewDragDropModeNormal,       // Drag in any direction (default)
    UIViewDragDropModeRestrictY,    // Restrict to x axis
    UIViewDragDropModeRestrictX     // Restrict to y axis
};
```

### UIViewDragDropDelegate Protocol
```
@protocol UIViewDragDropDelegate <NSObject>

@optional

- (void) view:(UIView *)view wasDroppedOnDropView:(UIView *)drop;

- (BOOL) viewShouldReturnToStartingPosition:(UIView*)view;

- (void) draggingDidBeginForView:(UIView*)view;
- (void) draggingDidEndWithoutDropForView:(UIView*)view;

- (void) view:(UIView *)view didHoverOverDropView:(UIView *)dropView;
- (void) view:(UIView *)view didUnhoverOverDropView:(UIView *)dropView;

@end
```

## Example Project

To run the example project; clone the repo, and run `pod install` from the Example directory first.

## Author

Ryan Meisters, ryanmeisters@gmail.com
- Ryan Meisters [@ryanmeisters](https://github.com/ryanmeisters)

## License

UIView+DragDrop is available under the MIT license. See the LICENSE file for more info.

