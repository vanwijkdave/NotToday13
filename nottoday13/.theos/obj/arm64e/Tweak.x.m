#line 1 "Tweak.x"












@interface WGWidgetWrapperView : UIView
@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;
@end

@interface WGWidgetListFooterView : UIView
@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;
@end

@interface SBSearchBar : UIView
@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;
@end




#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class SBSearchBar; @class SBRootFolderView; @class SBMainDisplayPolicyAggregator; @class WGWidgetListFooterView; @class WGWidgetWrapperView; 
static BOOL (*_logos_orig$_ungrouped$SBRootFolderView$isTodayViewPageHidden)(_LOGOS_SELF_TYPE_NORMAL SBRootFolderView* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$SBRootFolderView$isTodayViewPageHidden(_LOGOS_SELF_TYPE_NORMAL SBRootFolderView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$WGWidgetWrapperView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL WGWidgetWrapperView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$WGWidgetWrapperView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL WGWidgetWrapperView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$SBSearchBar$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL SBSearchBar* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$SBSearchBar$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBSearchBar* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$WGWidgetListFooterView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL WGWidgetListFooterView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$WGWidgetListFooterView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL WGWidgetListFooterView* _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_orig$_ungrouped$SBMainDisplayPolicyAggregator$_allowsCapabilityLockScreenTodayViewWithExplanation$)(_LOGOS_SELF_TYPE_NORMAL SBMainDisplayPolicyAggregator* _LOGOS_SELF_CONST, SEL, id*); static BOOL _logos_method$_ungrouped$SBMainDisplayPolicyAggregator$_allowsCapabilityLockScreenTodayViewWithExplanation$(_LOGOS_SELF_TYPE_NORMAL SBMainDisplayPolicyAggregator* _LOGOS_SELF_CONST, SEL, id*); static BOOL (*_logos_orig$_ungrouped$SBMainDisplayPolicyAggregator$_allowsCapabilityTodayViewWithExplanation$)(_LOGOS_SELF_TYPE_NORMAL SBMainDisplayPolicyAggregator* _LOGOS_SELF_CONST, SEL, id*); static BOOL _logos_method$_ungrouped$SBMainDisplayPolicyAggregator$_allowsCapabilityTodayViewWithExplanation$(_LOGOS_SELF_TYPE_NORMAL SBMainDisplayPolicyAggregator* _LOGOS_SELF_CONST, SEL, id*); 

#line 27 "Tweak.x"






static BOOL _logos_method$_ungrouped$SBRootFolderView$isTodayViewPageHidden(_LOGOS_SELF_TYPE_NORMAL SBRootFolderView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
	return true;
	_logos_orig$_ungrouped$SBRootFolderView$isTodayViewPageHidden(self, _cmd);
}



static void _logos_method$_ungrouped$WGWidgetWrapperView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL WGWidgetWrapperView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
	self.hidden = true;
	_logos_orig$_ungrouped$WGWidgetWrapperView$layoutSubviews(self, _cmd);
}



static void _logos_method$_ungrouped$SBSearchBar$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBSearchBar* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
	self.hidden = true;
	_logos_orig$_ungrouped$SBSearchBar$layoutSubviews(self, _cmd);
}



static void _logos_method$_ungrouped$WGWidgetListFooterView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL WGWidgetListFooterView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
	self.hidden = true;
	_logos_orig$_ungrouped$WGWidgetListFooterView$layoutSubviews(self, _cmd);
}
















static BOOL _logos_method$_ungrouped$SBMainDisplayPolicyAggregator$_allowsCapabilityLockScreenTodayViewWithExplanation$(_LOGOS_SELF_TYPE_NORMAL SBMainDisplayPolicyAggregator* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id* arg1) {
    return false;
}

static BOOL _logos_method$_ungrouped$SBMainDisplayPolicyAggregator$_allowsCapabilityTodayViewWithExplanation$(_LOGOS_SELF_TYPE_NORMAL SBMainDisplayPolicyAggregator* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id* arg1) {
    return false;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBRootFolderView = objc_getClass("SBRootFolderView"); MSHookMessageEx(_logos_class$_ungrouped$SBRootFolderView, @selector(isTodayViewPageHidden), (IMP)&_logos_method$_ungrouped$SBRootFolderView$isTodayViewPageHidden, (IMP*)&_logos_orig$_ungrouped$SBRootFolderView$isTodayViewPageHidden);Class _logos_class$_ungrouped$WGWidgetWrapperView = objc_getClass("WGWidgetWrapperView"); MSHookMessageEx(_logos_class$_ungrouped$WGWidgetWrapperView, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$WGWidgetWrapperView$layoutSubviews, (IMP*)&_logos_orig$_ungrouped$WGWidgetWrapperView$layoutSubviews);Class _logos_class$_ungrouped$SBSearchBar = objc_getClass("SBSearchBar"); MSHookMessageEx(_logos_class$_ungrouped$SBSearchBar, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$SBSearchBar$layoutSubviews, (IMP*)&_logos_orig$_ungrouped$SBSearchBar$layoutSubviews);Class _logos_class$_ungrouped$WGWidgetListFooterView = objc_getClass("WGWidgetListFooterView"); MSHookMessageEx(_logos_class$_ungrouped$WGWidgetListFooterView, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$WGWidgetListFooterView$layoutSubviews, (IMP*)&_logos_orig$_ungrouped$WGWidgetListFooterView$layoutSubviews);Class _logos_class$_ungrouped$SBMainDisplayPolicyAggregator = objc_getClass("SBMainDisplayPolicyAggregator"); MSHookMessageEx(_logos_class$_ungrouped$SBMainDisplayPolicyAggregator, @selector(_allowsCapabilityLockScreenTodayViewWithExplanation:), (IMP)&_logos_method$_ungrouped$SBMainDisplayPolicyAggregator$_allowsCapabilityLockScreenTodayViewWithExplanation$, (IMP*)&_logos_orig$_ungrouped$SBMainDisplayPolicyAggregator$_allowsCapabilityLockScreenTodayViewWithExplanation$);MSHookMessageEx(_logos_class$_ungrouped$SBMainDisplayPolicyAggregator, @selector(_allowsCapabilityTodayViewWithExplanation:), (IMP)&_logos_method$_ungrouped$SBMainDisplayPolicyAggregator$_allowsCapabilityTodayViewWithExplanation$, (IMP*)&_logos_orig$_ungrouped$SBMainDisplayPolicyAggregator$_allowsCapabilityTodayViewWithExplanation$);} }
#line 83 "Tweak.x"
