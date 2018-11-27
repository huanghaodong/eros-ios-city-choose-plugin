

#import "ProvinceCityModule.h"
#import <UIKit/UIKit.h>

#import "HmSelectAdView.h"
#import "WXComponentManager.h"
#import "WXConvert.h"
#import <WeexPluginLoader/WeexPluginLoader.h>

@interface ProvinceCityModule()



@property(nonatomic,copy)WXModuleKeepAliveCallback callback;
@end

WX_PlUGIN_EXPORT_MODULE(choosecity, ProvinceCityModule)
@implementation ProvinceCityModule

WX_EXPORT_METHOD(@selector(open:callback:))

-(void)open:(NSDictionary *)options callback:(WXModuleKeepAliveCallback)callback
{
   
    [self createBouncedView:options callback:(WXModuleKeepAliveCallback)callback];
    
}
-(void)createBouncedView:(NSDictionary *)options callback:(WXModuleKeepAliveCallback)callback
{

   
    HmSelectAdView *selectV = [[HmSelectAdView alloc]initWithLastContent:nil initWithOption:options];
    selectV.callback = callback;
//    selectV.confirmSelect = ^(NSArray *address) {
//        self.currentProvince = address[0];
//        self.currentCity = address[1];
//        self.currentArea = address[2];
//
//    };
    [selectV show];
    
}

#pragma mark - HmSelectAdViewDelegate
//- (void)datePickerView:(QBMDatePickerView *)datePickerView didSelectDate:(NSDate *)date {
//    self.selectedDate = date;
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm"];
//    NSString *value = [dateFormatter stringFromDate:self.selectedDate];
//    if (self.callback) {
//        self.callback(@{ @"result": @"success",@"data":value},NO);
//        self.callback=nil;
//    }
//}
//-(void)cancleEvent{
//    if (self.callback) {
//        self.callback(@{ @"result": @"cancel"},NO);
//        self.callback = nil;
//    }
//}
@end

