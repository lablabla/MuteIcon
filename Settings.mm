#import "Settings.h"
#import <Preferences/Preferences.h>
#import <UIKit/UIKit.h>
#define PLIST_PATH @"/var/mobile/Library/Preferences/com.lablabla.muteicon.prefs.plist"

@implementation Settings

@synthesize preferences;

-(id)init
{
	self = [super init];
	if(self)
	{
        if(![[NSFileManager defaultManager] fileExistsAtPath:PLIST_PATH])
        {
            NSMutableDictionary *tmp = [[NSMutableDictionary alloc] init];
            [tmp setObject:[NSNumber numberWithBool:YES] forKey:@"muteEnabled"];
            [tmp setObject:[NSNumber numberWithInt:0] forKey:@"iconType"];
            [tmp writeToFile:PLIST_PATH atomically:YES];
        }
        preferences = [NSDictionary dictionaryWithContentsOfFile:PLIST_PATH];

	}
	return self;
}

-(void)reloadPreferences
{

	preferences = [NSDictionary dictionaryWithContentsOfFile:PLIST_PATH];
}

- (void) dealloc {
	[preferences release];
	[super dealloc];
}



@end