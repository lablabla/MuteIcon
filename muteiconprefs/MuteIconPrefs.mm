#import <Preferences/Preferences.h>
#define kUrl_MakeDonation @"https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=BW2BNFCK5TQ3N"
@interface MuteIconPrefsListController: PSListController {
}
@end

@implementation MuteIconPrefsListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"MuteIconPrefs" target:self] retain];
	}
	return _specifiers;
}
- (void)makeDonation:(PSSpecifier *)specifier
{
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:kUrl_MakeDonation]];
}
@end
// vim:ft=objc
