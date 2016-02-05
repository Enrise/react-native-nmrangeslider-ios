#import "RCTBridgeModule.h"
#import "RCTViewManager.h"
#import "../NMRangeSlider/NMRangeSlider.h"

@interface NMRangeSliderManager : RCTViewManager

- (void)sendValues:(NSString *)eventName touch:(UITouch *)touch;

@end
