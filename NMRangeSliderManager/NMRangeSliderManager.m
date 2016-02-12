#import "NMRangeSliderManager.h"
#import "../NMRangeSlider/NMRangeSlider.h"
#import "RCTEventDispatcher.h"
#import "UIView+React.h"
#import "../NMRangeSlider/MMColorForTrack.h"
#import "RCTUtils.h"

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
RCT_EXPORT_VIEW_PROPERTY(lowerMaximumValue, float);
RCT_EXPORT_VIEW_PROPERTY(upperValue, float);
RCT_EXPORT_VIEW_PROPERTY(upperMinimumValue, float);
RCT_EXPORT_VIEW_PROPERTY(lowerCenter, CGPoint);
RCT_EXPORT_VIEW_PROPERTY(upperCenter, CGPoint);
RCT_CUSTOM_VIEW_PROPERTY(trackColor, UIColor, NMRangeSlider)
{
    if (json) {
        CGColorRef color = [RCTConvert UIColor:json].CGColor;
        const CGFloat *rgba = CGColorGetComponents(color);
        view.trackImage = [MMColorForTrack getTrackImageWithColorR:rgba[0]*255 G:rgba[1]*255 B:rgba[2]*255 A:rgba[3]];
    }
}

RCT_CUSTOM_VIEW_PROPERTY(disabled, BOOL, NMRangeSlider)
{
  if (json) {
    [view setEnabled:!([RCTConvert BOOL:json])];
  } else {
    [view setEnabled:defaultView.enabled];
  }
}

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
