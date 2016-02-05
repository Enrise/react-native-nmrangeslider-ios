#import "NMRangeSliderManager.h"
#import "../NMRangeSlider/NMRangeSlider.h"
#import "RCTEventDispatcher.h"
#import "UIView+React.h"

@interface NMRangeSliderManager() <NMRangeSliderDelegate>

@end

@implementation NMRangeSliderManager 

RCT_EXPORT_MODULE();

RCT_EXPORT_VIEW_PROPERTY(minimumValue, float);
RCT_EXPORT_VIEW_PROPERTY(maximumValue, float);
RCT_EXPORT_VIEW_PROPERTY(minimumRange, float);
RCT_EXPORT_VIEW_PROPERTY(stepValue, float);
RCT_EXPORT_VIEW_PROPERTY(stepValueContinuously, BOOL);
RCT_EXPORT_VIEW_PROPERTY(continuous, BOOL);
RCT_EXPORT_VIEW_PROPERTY(lowerValue, float);
RCT_EXPORT_VIEW_PROPERTY(upperValue, float);
RCT_EXPORT_VIEW_PROPERTY(lowerCenter, CGPoint);
//RCT_EXPORT_VIEW_PROPERTY(onChange, RCTBubblingEventBlock)

- (UIView *)view
{
  NMRangeSlider *slider = [[NMRangeSlider alloc] init]; // RCTMap
  slider.delegate = self;
  return slider;
}

#pragma mark NMRangeSliderDelegate

- (void)sendValues:(NSString *)eventName touch:(UITouch *)touch;
{
  NMRangeSlider *slider = (NMRangeSlider *) touch.view;
  NSDictionary *event = @{
                       @"target": slider.reactTag,
                       @"lowerValue": @(slider.lowerValue),
                       @"upperValue": @(slider.upperValue)
                       };
  [self.bridge.eventDispatcher sendInputEventWithName:eventName body:event];
}

- (void) beginTrackingWithTouch:(UITouch *)touch withEvent:(UIEvent *)event;
{
  [self sendValues:@"topChange" touch:touch];
}

- (void) continueTrackingWithTouch:(UITouch *)touch withEvent:(UIEvent *)event;
{
  
  [self sendValues:@"topChange" touch:touch];
}

- (void) endTrackingWithTouch:(UITouch *)touch withEvent:(UIEvent *)event;
{
 
  [self sendValues:@"topChange" touch:touch];
}

@end
