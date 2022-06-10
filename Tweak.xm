#import <UIKit/UIKit.h>


%hook UILabel
-(void)setText:(id)arg1 {

    %orig;
    NSString *label = self.text;

    if ([label containsString:@"Edit Profile"]) {
        self.text = @"الاعدادات";
    } else {
        return %orig;
    }

}
%end
