

// @interface SBRootFolderView : UIViewController
// @property (nonatomic, assign, readwrite, getter=isTodayViewPageHidden) BOOL isTodayViewPageHidden;
// @end



// @interface SBHomeScreenTodayViewController : UIViewController
// @property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;
// @end

@interface WGWidgetWrapperView : UIView
@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;
@end

@interface WGWidgetListFooterView : UIView
@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;
@end

@interface SBSearchBar : UIView
@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;
@end



%hook SBRootFolderView
// -(void)_layoutSubviews {
// 	self.isTodayViewPageHidden = true;
// 	%orig;
// }

-(BOOL)isTodayViewPageHidden {
	return true;
	%orig;
}
%end

%hook WGWidgetWrapperView
-(void)layoutSubviews {
	self.hidden = true;
	%orig;
}
%end

%hook SBSearchBar
-(void)layoutSubviews {
	self.hidden = true;
	%orig;
}
%end

%hook WGWidgetListFooterView
-(void)layoutSubviews {
	self.hidden = true;
	%orig;
}
%end


// %hook SBHomeScreenTodayViewController

// -(void)viewDidLoad {
// 	self.hidden = true;
// 	%orig;
// }


// %end


%hook SBMainDisplayPolicyAggregator

-(BOOL)_allowsCapabilityLockScreenTodayViewWithExplanation:(id*)arg1 {
    return false;
}

-(BOOL)_allowsCapabilityTodayViewWithExplanation:(id*)arg1 {
    return false;
}

%end