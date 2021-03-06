//
//  TGLGuillotineMenu.h
//  GuillotineMenuSample
//
//  Created by Tigielle on 02/12/15.
//  Copyright © 2016 李春菲 Tagliafico. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol TGLGuillotineMenuDelegate;

@interface TGLGuillotineMenu : UIViewController <UITableViewDataSource, UITableViewDelegate, UIDynamicAnimatorDelegate, UICollisionBehaviorDelegate>{
    
    float screenW;
    float screenH;
    
    float navBarH;
    float statusBarH;
    
    UIView      *menuView;
    UIButton    *menuButton;
    UITableView *menuTableView;
    
    // - Menu Button Rotation
    float oldAngle;
    float currentAngle;
    
    
    BOOL isOpen;
    BOOL supportBoundaryAdded;
    
    UIPushBehavior *pushInit;
    UIPushBehavior *pushOpen;
    UIAttachmentBehavior *attachmentBehavior;
    
    // - Dynamics
    UIDynamicAnimator   *animator;
    UICollisionBehavior *collision;
    UIGravityBehavior   *gravity;
    
    CGPoint puntoAncoraggio;
    
    BOOL isPresentedFirst;
}

@property (nonatomic, strong) UIViewController  *currentViewController;

@property (nonatomic, strong) UIButton  *menuButton;
@property (nonatomic, strong) NSArray   *viewControllers;
@property (nonatomic, strong) NSArray   *menuTitles;
@property (nonatomic, strong) NSArray   *imagesTitles;
@property (nonatomic, strong) UIColor   *menuColor;

@property (nonatomic, weak) id<TGLGuillotineMenuDelegate> delegate;


// -Init method
-(id)initWithViewControllers:(NSArray *)vCs MenuTitles:(NSArray *)titles andImagesTitles:(NSArray *)imgTitles;

// -
-(BOOL)isOpen;

// -
-(void)switchMenuState;
-(void)openMenu;
-(void)dismissMenu;

@end



@protocol TGLGuillotineMenuDelegate <NSObject>

- (void)menuDidOpen;
- (void)menuDidClose;
- (void)selectedMenuItemAtIndex:(NSInteger)index;

@end
